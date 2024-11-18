import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GodsDetail extends StatefulWidget {
  const GodsDetail({super.key});

  @override
  State<GodsDetail> createState() => _GodsDetailState();
}

class _GodsDetailState extends State<GodsDetail> {
  AssetsAudioPlayer player = AssetsAudioPlayer.newPlayer();
  List<Audio> audios = [
    Audio.network(
        "https://www.pagalworld.com.sb/files/download/type/320/id/66697/1.mp3?1",
        metas: Metas(
            title: "Ram Siya Ram",
            artist: "Sachin-Jigar,Arijit Singh",
            image: MetasImage.network(
                "https://www.pagalworld.com.sb/siteuploads/thumb/sft134/66697_4.jpg"))),
    Audio.network(
        "https://www.pagalworld.com.sb/files/download/type/320/id/68830/1.mp3?1",
        metas: Metas(
            title: "Raam Aayenge",
            artist: "Sachin-Jigar,Arijit Singh",
            image: MetasImage.network(
                "https://www.pagalworld.com.sb/siteuploads/thumb/sft138/68830_4.jpg"))),
    Audio.network(
        "https://www.pagalworld.com.sb/files/download/type/320/id/67149/1.mp3?1",
        metas: Metas(
            title: "Har Har Mahadev",
            artist: "Sachin-Jigar,Arijit Singh",
            image: MetasImage.network(
                "https://www.pagalworld.com.sb/siteuploads/thumb/sft135/67149_4.jpg"))),
    Audio.network(
        "https://www.pagalworld.com.sb/files/download/type/320/id/70882/1.mp3?1",
        metas: Metas(
            title: "Ayodhya Ke Ram",
            artist: "Sachin-Jigar,Arijit Singh",
            image: MetasImage.network(
                "https://www.pagalworld.com.sb/siteuploads/thumb/sft142/70882_4.jpg"))),
    Audio.network(
        "https://www.pagalworld.com.sb/files/download/type/320/id/72435/1.mp3?1",
        metas: Metas(
            title: "Jai Bajrangbali",
            artist: "Sachin-Jigar,Arijit Singh",
            image: MetasImage.network(
                "https://www.pagalworld.com.sb/siteuploads/thumb/sft145/72435_4.jpg"))),
    Audio.network(
        "https://www.pagalworld.com.sb/files/download/type/320/id/71944/1.mp3?1",
        metas: Metas(
            title: "Natkhat Krishna",
            artist: "Sachin-Jigar,Arijit Singh",
            image: MetasImage.network(
                "https://www.pagalworld.com.sb/siteuploads/thumb/sft144/71944_4.jpg"))),
    Audio.network(
        "https://www.pagalworld.com.sb/files/download/id/71181//1.mp3?1",
        metas: Metas(
            title: "Bhaj Hare Krishna",
            artist: "Sachin-Jigar,Arijit Singh",
            image: MetasImage.network(
                "https://www.pagalworld.com.sb/siteuploads/thumb/sft143/71181_4.jpg"))),
    Audio.network(
        "https://www.pagalworld.com.sb/files/download/id/70416//1.mp3?1",
        metas: Metas(
            title: "Har Har Mahadev",
            artist: "Sachin-Jigar,Arijit Singh",
            image: MetasImage.network(
                "https://www.pagalworld.com.sb/siteuploads/thumb/sft141/70416_4.jpg"))),
    Audio.network(
        "https://www.pagalworld.com.sb/files/download/type/320/id/70281/1.mp3?1",
        metas: Metas(
            title: "Shambhu",
            artist: "Sachin-Jigar,Arijit Singh",
            image: MetasImage.network(
                "https://www.pagalworld.com.sb/siteuploads/thumb/sft141/70281_4.jpg"))),
    Audio.network(
        "https://www.pagalworld.com.sb/files/download/type/320/id/70786/1.mp3?1",
        metas: Metas(
            title: "Mujhe Maa Se Mila De",
            artist: "Sachin-Jigar,Arijit Singh",
            image: MetasImage.network(
                "https://www.pagalworld.com.sb/siteuploads/thumb/sft142/70786_4.jpg"))),
  ];
  @override
  void initState() {
    super.initState();
    player.open(Playlist(audios: audios), autoStart: false);
  }
  @override
  Widget build(BuildContext context) {
    final Map<String, dynamic> songDetails =
    ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>;

    final String title = songDetails['title'];
    final String artist = songDetails['artist'];
    final String imageUrl = songDetails['imageUrl'];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 200),
            CircleAvatar(
              radius: 70,
              backgroundImage: NetworkImage(imageUrl),
            ),
            const SizedBox(height: 20),
            Text(
              title,
              style: GoogleFonts.roboto(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 10),
            Text(
              artist,
              style: GoogleFonts.roboto(
                fontSize: 18,
                color: Colors.grey,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 150),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {
                      player.previous();
                    },
                    icon: Icon(
                      Icons.skip_previous,
                      color: Colors.white,
                    )),
                StreamBuilder<bool>(
                    stream: player.isPlaying,
                    builder: (context, snapshot) {
                      bool isPlay = snapshot.data ?? false;
                      return IconButton(
                          onPressed: () {
                            player.playOrPause();
                          },
                          icon: Icon(
                            isPlay ? Icons.pause : Icons.play_arrow,
                            color: Colors.white,
                          ));
                    }),
                IconButton(
                    onPressed: () {
                      player.next();
                    },
                    icon: Icon(
                      Icons.skip_next,
                      color: Colors.white,
                    )),
              ],
            ),
            StreamBuilder<Playing?>(
                stream: player.current,
                builder: (context, snapshot) {
                  Playing? data = snapshot.data;
                  Duration? audioDuration = data?.audio.duration;
                  if (audioDuration?.inSeconds != null) {
                    return StreamBuilder<Duration>(
                        stream: player.currentPosition,
                        builder: (context, snapshot) {
                          var duration = snapshot.data;
                          return Slider(
                            activeColor: Colors.grey,
                            thumbColor: Colors.grey,
                            value: (duration?.inSeconds ?? 0).toDouble(),
                            min: 0,
                            max: (audioDuration?.inSeconds ?? 1)
                                .toDouble(),
                            onChanged: (value) {
                              player.seek(
                                Duration(seconds: value.toInt()),
                              );
                            },
                          );
                        });
                  } else {
                    return CircularProgressIndicator();
                  }
                })
          ],
        ),
      ),
    );
  }
}
