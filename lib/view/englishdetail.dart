import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EnglishDetail extends StatefulWidget {
  const EnglishDetail({super.key});

  @override
  State<EnglishDetail> createState() => _EnglishDetailState();
}

class _EnglishDetailState extends State<EnglishDetail> {
  AssetsAudioPlayer player = AssetsAudioPlayer.newPlayer();
  List<Audio> audios = [
    Audio.network(
        "https://www.pagalworld.com.sb/files/download/type/320/id/70871/1.mp3?1",
        metas: Metas(
            title: "Always",
            artist: "Sachin-Jigar,Arijit Singh",
            image: MetasImage.network(
                "https://www.pagalworld.com.sb/siteuploads/thumb/sft142/70871_4.jpg"))),
    Audio.network(
        "https://www.pagalworld.com.sb/files/download/type/320/id/70029/1.mp3?1",
        metas: Metas(
            title: "Super Lady",
            artist: "Sachin-Jigar,Arijit Singh",
            image: MetasImage.network(
                "https://www.pagalworld.com.sb/siteuploads/thumb/sft141/70029_4.jpg"))),
    Audio.network(
        "https://www.pagalworld.com.sb/files/download/type/320/id/68513/1.mp3?1",
        metas: Metas(
            title: "Time Traveller ",
            artist: "Sachin-Jigar,Arijit Singh",
            image: MetasImage.network(
                "https://www.pagalworld.com.sb/siteuploads/thumb/sft138/68513_4.jpg"))),
    Audio.network(
        "https://www.pagalworld.com.sb/files/download/type/320/id/4338/1.mp3?1",
        metas: Metas(
            title: "Moving on",
            artist: "Sachin-Jigar,Arijit Singh",
            image: MetasImage.network(
                "https://www.pagalworld.com.sb/siteuploads/thumb/sft9/4338_4.jpg"))),
    Audio.network(
        "https://www.pagalworld.com.sb/files/download/type/320/id/4333/1.mp3?1",
        metas: Metas(
            title: "After Party",
            artist: "Sachin-Jigar,Arijit Singh",
            image: MetasImage.network(
                "https://www.pagalworld.com.sb/siteuploads/thumb/sft6/2568_4.jpg"))),
    Audio.network(
        "https://www.pagalworld.com.sb/files/download/id/4183//1.mp3?1",
        metas: Metas(
            title: "Nati Nati Ghetto",
            artist: "Sachin-Jigar,Arijit Singh",
            image: MetasImage.network(
                "https://www.pagalworld.com.sb/siteuploads/thumb/sft9/4183_4.jpg"))),
    Audio.network(
        "https://www.pagalworld.com.sb/files/download/type/320/id/3947/1.mp3?1",
        metas: Metas(
            title: "Stay",
            artist: "Sachin-Jigar,Arijit Singh",
            image: MetasImage.network(
                "https://www.pagalworld.com.sb/siteuploads/thumb/sft8/3947_4.jpg"))),
    Audio.network(
        "https://www.pagalworld.com.sb/files/download/type/320/id/3265/1.mp3?1",
        metas: Metas(
            title: "See You Again",
            artist: "Sachin-Jigar,Arijit Singh",
            image: MetasImage.network(
                "https://www.pagalworld.com.sb/siteuploads/thumb/sft7/3265_4.jpg"))),
    Audio.network(
        "https://www.pagalworld.com.sb/files/download/type/320/id/2568/1.mp3?1",
        metas: Metas(
            title: "Sweet Dreams",
            artist: "Sachin-Jigar,Arijit Singh",
            image: MetasImage.network(
                "https://www.pagalworld.com.sb/siteuploads/thumb/sft6/2568_4.jpg"))),

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
