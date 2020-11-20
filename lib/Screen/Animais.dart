import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

class Animais extends StatefulWidget {
  @override
  _AnimaisState createState() => _AnimaisState();
}

class _AnimaisState extends State<Animais> {

  AudioCache _audioCache = AudioCache(prefix: "audios/");

  _executar(String nomeAudio) {
    _audioCache.play(nomeAudio + ".mp3");
  }

  @override
  void initState() {
    super.initState();
    _audioCache.loadAll([
      "cao.mp3", "gato.mp3", "leao.mp3",
      "macaco.mp3", "ovelha.mp3", "vaca.mp3"
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2,
        childAspectRatio: MediaQuery.of(context).size.aspectRatio * 2,
      children: [
        GestureDetector(
          onTap: () {  _executar("cao");  },
          child: Image.asset("assets/images/cao.png"),
        ),
        GestureDetector(
          onTap: () {  _executar("gato");  },
          child: Image.asset("assets/images/gato.png"),
        ),
        GestureDetector(
          onTap: () {  _executar("leao");  },
          child: Image.asset("assets/images/leao.png"),
        ),
        GestureDetector(
          onTap: () {  _executar("macaco");  },
          child: Image.asset("assets/images/macaco.png"),
        ),
        GestureDetector(
          onTap: () {  _executar("ovelha");  },
          child: Image.asset("assets/images/ovelha.png"),
        ),
        GestureDetector(
          onTap: () {  _executar("vaca");  },
          child: Image.asset("assets/images/vaca.png"),
        ),
      ],
    );
  }
}