import 'package:flutter/material.dart';

class DemoAppbar extends StatelessWidget {
  const DemoAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        toolbarHeight: 90,
        title: Text(
          'Demo',
          style: const TextStyle(color: Colors.black),
        ),

        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.grey, Colors.white],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  stops: [0.0, 2.0],


              ),
              image: DecorationImage(
                  image: AssetImage('assets/images/pattern (3).png'),
                  fit: BoxFit.fill)),
        ),
      ),
    );
  }
}
