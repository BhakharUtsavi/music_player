import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';

class VideoDetailScreen extends StatefulWidget {
  final String videoName;
  final String videoPath;

  const VideoDetailScreen({
    required this.videoName,
    required this.videoPath,
    super.key,
  });

  @override
  State<VideoDetailScreen> createState() => _VideoDetailScreenState();
}

class _VideoDetailScreenState extends State<VideoDetailScreen> {
  late VideoPlayerController _videoPlayerController;
  ChewieController? _chewieController;

  final List<Map<String, String>> videoList = [
    {"name": "Apna Bana Le", "path": "assets/video/Apna_bnale.mp4", "image": "assets/images/Apna_bnale_thumb.jpg"},
    {"name": "Heer Ranjha", "path": "assets/video/heer_ranjha.mp4", "image": "assets/images/heer_ranjha_thumb.jpg"},
    {"name": "Island", "path": "assets/video/Islands - 2119.mp4", "image": "assets/images/Islands_thumb.jpg"},
    {"name": "Khani Suno", "path": "assets/video/khani_suno.mp4", "image": "assets/images/khani_suno_thumb.jpg"},
    {"name": "Malang Sajna", "path": "assets/video/malang_sjna.mp4", "image": "assets/images/malang_sjna_thumb.jpg"},
    {"name": "Nathni", "path": "assets/video/nathni.mp4", "image": "assets/images/nathni_thumb.jpg"},
  ];

  @override
  void initState() {
    super.initState();
    _initializeVideo(widget.videoPath);
  }

  void _initializeVideo(String videoPath) {
    _videoPlayerController = VideoPlayerController.asset(videoPath)
      ..initialize().then((_) {
        _chewieController = ChewieController(
          videoPlayerController: _videoPlayerController,
          autoPlay: true,
          looping: false,
        );
        setState(() {});
      });
  }

  void _playSelectedVideo(String videoPath) {
    _videoPlayerController.dispose();
    _chewieController?.dispose();
    _initializeVideo(videoPath);
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        // title: Text(
        //   widget.videoName,
        //   style: const TextStyle(color: Colors.white),
        // ),
      ),
      body: Center(
        child: _chewieController != null
              ? AspectRatio(
            aspectRatio: _videoPlayerController.value.aspectRatio,
            child: Chewie(controller: _chewieController!),
          )
              : const CircularProgressIndicator(),
      ),
    );
  }
}
