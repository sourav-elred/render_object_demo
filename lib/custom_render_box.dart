import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class CircleRenderBox extends RenderBox {
  Color _color;
  double _radius;

  CircleRenderBox(this._color, this._radius);

  Color get color => _color;
  set color(Color value) {
    if (_color == value) return;
    _color = value;
    markNeedsPaint();
  }

  double get radius => _radius;
  set radius(double value) {
    if (_radius == value) return;
    _radius = value;
    markNeedsLayout();
  }

  @override
  void performLayout() {
    size = constraints.constrain(Size(_radius * 2, _radius * 2));
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    final Paint paint = Paint()..color = _color;
    context.canvas
        .drawCircle(offset + Offset(_radius, _radius), _radius, paint);
  }
}
