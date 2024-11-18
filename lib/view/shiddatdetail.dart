import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShiddatDetail extends StatefulWidget {
  const ShiddatDetail({super.key});

  @override
  State<ShiddatDetail> createState() => _ShiddatDetailState();
}

class _ShiddatDetailState extends State<ShiddatDetail> {
  AssetsAudioPlayer player = AssetsAudioPlayer.newPlayer();
  List<Audio> audios = [
    Audio.network("https://www.pagalworld.com.sb/files/download/type/320/id/3750/1.mp3?1",
        metas: Metas(
            title: "Shiddat Title Track - From Shiddat",
            artist: "Sachin-Jigar,Arijit Singh",
            image: MetasImage.network(
                "https://www.pagalworld.com.sb/siteuploads/thumb/sft8/3750_4.jpg"))),
    Audio.network(
        "https://www.pagalworld.com.sb/files/download/type/192/id/3796/1.mp3?1",
        metas: Metas(
            title: "Akhiyan Udeek Diyan - From Shiddat",
            artist: "Sachin-Jigar,Arijit Singh",
            image: MetasImage.network(
                "https://www.pagalworld.com.sb/siteuploads/thumb/sft8/3796_4.jpg"))),
    Audio.network(
        "https://www.pagalworld.com.sb/files/download/type/192/id/3817/1.mp3?1",
        metas: Metas(
            title: "Barbaadiyan",
            artist: "Sachin-Jigar,Skeletron",
            image: MetasImage.network(
                "https://www.pagalworld.com.sb/siteuploads/thumb/sft8/3817_4.jpg"))),
    Audio.network(
        "https://www.pagalworld.com.sb/files/download/type/320/id/71139/1.mp3?1",
        metas: Metas(
            title: "Hum Dum",
            artist: "Sachin-Jigar, Hansika Pareek",
            image: MetasImage.network(
                "https://www.pagalworld.com.sb/siteuploads/thumb/sft143/71139_4.jpg"))),
    Audio.network("https://www.pagalworld.com.sb/files/download/type/192/id/3819/1.mp3?1",
        metas: Metas(
            title: "Chitta",
            artist: "Ash King, Sachin-Jigar",
            image: MetasImage.network(
                "https://www.pagalworld.com.sb/siteuploads/thumb/sft8/3819_4.jpg"))),
    Audio.network(
        "https://www.pagalworld.com.sb/files/download/type/192/id/3820/1.mp3?1",
        metas: Metas(
            title: "Jug Jug Jeeve",
            artist: "AKASH MEHTA",
            image: MetasImage.network(
                "https://www.pagalworld.com.sb/siteuploads/thumb/sft8/3820_4.jpg"))),
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
