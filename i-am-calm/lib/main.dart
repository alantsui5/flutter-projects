import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

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

  late AssetsAudioPlayer _assetsAudioPlayer;

  @override
  initState() {
    super.initState();
    _assetsAudioPlayer = AssetsAudioPlayer.newPlayer();
    openPlayer();
  }

  void openPlayer() async {
    await _assetsAudioPlayer.open(
      Audio("assets/audio/lofi.mp3"),
      showNotification: true,
      autoStart: true,
    );
  }

  @override
  void dispose() {
    _assetsAudioPlayer.dispose();
    super.dispose();
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
                onPressed: (){
                  _assetsAudioPlayer.playOrPause();
                },
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
