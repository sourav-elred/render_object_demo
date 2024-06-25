import 'package:flutter/material.dart';
import 'custom_circle.dart';

class DemoScreen extends StatefulWidget {
  const DemoScreen({super.key});

  @override
  DemoScreenState createState() => DemoScreenState();
}

class DemoScreenState extends State<DemoScreen> {
  Color _color = Colors.blue;
  double _radius = 50;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Render Object Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CustomCircle(color: _color, radius: _radius),
            const SizedBox(height: 20),
            Slider(
              value: _radius,
              min: 10,
              max: 100,
              onChanged: (value) {
                setState(() {
                  _radius = value;
                });
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _color = Colors.red;
                    });
                  },
                  child: const Text('Red'),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _color = Colors.green;
                    });
                  },
                  child: const Text('Green'),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _color = Colors.blue;
                    });
                  },
                  child: const Text('Blue'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
