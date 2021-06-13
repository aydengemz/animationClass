import 'package:flutter/material.dart';

class AnimatedOpacityPage extends StatefulWidget {
  @override
  createState() => AnimatedOpacityPageState();
}

class AnimatedOpacityPageState extends State<AnimatedOpacityPage> {
  @override
  double _opacity = 1.0;

  void _fade() {
    if (_opacity == 1) {
      setState(() {
        _opacity = 0;
      });
    } else {
      setState(() {
        _opacity = 1;
      });
    }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedOpacity'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: _opacity,
              duration: Duration(seconds: 1),
              curve: Curves.fastOutSlowIn,
              child: FlutterLogo(size: 200),
            ),
            ElevatedButton(
              child: Text('Fade Logo'),
              // TODO: Implement
              onPressed: _fade,
            ),
          ],
        ),
      ),
    );
  }
}
