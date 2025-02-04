import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class PlayTrailer extends StatefulWidget {
  final String url;
  const PlayTrailer({required this.url, super.key});

  @override
  State<PlayTrailer> createState() => _PlayTrailerState();
}

class _PlayTrailerState extends State<PlayTrailer> {
  late YoutubePlayerController controller;

  

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId('https://www.youtube.com/watch?v=${widget.url}')!,
    );
  }

  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    controller.pause();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayerBuilder(
      player: YoutubePlayer(controller: controller),
      builder: (context, player) {
        return Scaffold(
          appBar: AppBar(leading: InkWell(
            onTap: () => Navigator.pop(context),
            child: const Icon(Icons.arrow_back_rounded)),),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [player],
          ),
        );
      },
    );
  }
}
