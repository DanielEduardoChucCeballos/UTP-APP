/* import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class VideoUtp extends StatefulWidget {
  const VideoUtp({Key? key}) : super(key: key);

  @override
  State<VideoUtp> createState() => _VideoUtpState();
}

class _VideoUtpState extends State<VideoUtp> {
  late YoutubePlayerController ytController;

  @override
  void initState() {
    ytController = YoutubePlayerController(
      initialVideoId: '_pJpuSnHZdY',
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: true,
        startAt: 50,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[600],
        centerTitle: true,
        leading: Icon(
          Icons.play_circle,
          color: Colors.black87,
          size: 34.0,
        ),
        title: Text(
          "Conócenos",
          style: TextStyle(
            fontSize: 23,
            color: Colors.black87,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Column(
        children: [
          Wrap(
            children: [
              YoutubePlayer(
                controller: ytController,
                showVideoProgressIndicator: true,
              ),
            ],
          ),
        ],
      ),
    );
  }
} */
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import '/../constants.dart';
import '/../size_confige.dart';

class VideoUtp extends StatefulWidget {
  const VideoUtp({
    Key? key,
  }) : super(key: key);

  @override
  State<VideoUtp> createState() => _VideoUtpState();
}

class _VideoUtpState extends State<VideoUtp> {

 late YoutubePlayerController ytController;

  @override
  void initState() {
    ytController = YoutubePlayerController(
      initialVideoId: 'ACJ0xYrVq2Y',
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: true,
        startAt: 50,
      ),
    );
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
          children: [
            Wrap(
              children: [
                YoutubePlayer(
                  controller: ytController,
                  showVideoProgressIndicator: true,
                ),
              ],
            ),
          ],
      ),
        ),
      ],
    );
  }
}
