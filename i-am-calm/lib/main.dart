import 'package:flutter/material.dart';

void main() {
  runApp(const HomeScreen()
  );
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          title: const Text("I am Calm"),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
              image: AssetImage("images/meditation2.png"),
              width: 300,
              ),
              TextButton(
                onPressed: (){},
                child: const Text("Calm Down")
              )
            ],
          ),
        )
      )
    );
  }
}
