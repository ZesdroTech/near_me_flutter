import 'package:flutter/material.dart';

class DemoAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.black,
        appBar: PreferredSize(
            preferredSize: Size.fromHeight(160.0), // here the desired height
          child: Stack(
            children: [
              // Background image
              Transform(
                transform: Matrix4.rotationZ(0.0)..scale(1.0),
                child: Image.asset(
                  'assets/images/app_bar_shade.png',
                  // opacity:,
                  fit: BoxFit.fill,
                  height: 160.0,
                  width: double.infinity,
                ),
              ),
              // AppBar content
              AppBar(
                backgroundColor: Colors.transparent,
                elevation: 0,
                // Other AppBar properties and content
                title: Text('Your App Title'),
              ),
              SizedBox(),
            ],
          ),
        ),

    );
  }
}