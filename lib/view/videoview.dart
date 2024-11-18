import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:music_player_app/view/videodetailscreen.dart';
import 'package:video_player/video_player.dart';

class VideoView extends StatefulWidget {
  const VideoView({super.key});

  @override
  State<VideoView> createState() => _VideoViewState();
}

class _VideoViewState extends State<VideoView> {
  List<Map<String, dynamic>> videos = [
    {
      "name": "Apna Bana Le",
      "image": "assets/images/apna-bana-le-bhediya.jpg",
      "video": "assets/video/Apna_bnale.mp4",
    },
    {
      "name": "Heer Ranjha",
      "image": "assets/images/heer.jpg",
      "video": "assets/video/heer_ranjha.mp4",
    },
    {
      "name": "Island",
      "image": "assets/images/island.jpg",
      "video": "assets/video/Islands - 2119.mp4",
    },
    {
      "name": "Khani Suno",
      "image": "assets/images/khani.jpg",
      "video": "assets/video/khani_suno.mp4",
    },
    {
      "name": "Malang Sajna",
      "image": "assets/images/malang.jpg",
      "video": "assets/video/malang_sjna.mp4",
    },
    {
      "name": "Nathni",
      "image": "assets/images/nathni.jpg",
      "video": "assets/video/nathni.mp4",
    },
  ];

  // VideoPlayerController videoPlayerController =
  // VideoPlayerController.asset("assets/video/nathni.mp4");
  // ChewieController? chewieController;
  //
  // @override
  // void initState() {
  //   videoPlayerController.initialize().then((value) {
  //     chewieController = ChewieController(
  //         videoPlayerController: videoPlayerController, autoPlay: true);
  //     setState(() {});
  //   });
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    // if (chewieController != null)
    //   return Column(
    //     children: [
    //       Center(
    //         child: AspectRatio(
    //           aspectRatio: videoPlayerController.value.aspectRatio ?? 1,
    //           child: Chewie(controller: chewieController!),
    //         ),
    //       ),
    //     ],
    //   );
    // return Center(child: CircularProgressIndicator());
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: videos.map((e) {
            return GestureDetector(
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => VideoDetailScreen(
                      videoPath: e['video'],
                      videoName: e['name'],
                    ),
                  ),
                );
              },
              child: Container(
                height: 200,
                width: 350,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                        image: AssetImage(e["image"]), fit: BoxFit.fill)),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
