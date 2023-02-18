import 'package:flutter/material.dart';

void main() {
  runApp(const HomeScreen()
  );
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({
    super.key,
  });

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  initState() {
    print("initState Called");
  }

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
              const Spacer(flex:2),
              const Image(
              image: AssetImage("images/meditation2.png"),
              width: 300,
              ),
              const Spacer(),
              TextButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.greenAccent),
                ),
                onPressed: (){},
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Text("Calm Down", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25, color: Colors.green[700]),),
                )
              ),
              const Spacer(flex:2),
            ],
          ),
        )
      )
    );
  }
}
