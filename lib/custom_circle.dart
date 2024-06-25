import 'package:flutter/widgets.dart';
import 'custom_render_box.dart';

class CustomCircle extends LeafRenderObjectWidget {
  final Color color;
  final double radius;

  const CustomCircle({super.key, required this.color, required this.radius});

  @override
  RenderObject createRenderObject(BuildContext context) {
    return CircleRenderBox(color, radius);
  }

  @override
  void updateRenderObject(BuildContext context, CircleRenderBox renderObject) {
    renderObject
      ..color = color
      ..radius = radius;
  }
}
