import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AshiquiDetail extends StatefulWidget {
  const AshiquiDetail({super.key});

  @override
  State<AshiquiDetail> createState() => _AshiquiDetailState();
}

class _AshiquiDetailState extends State<AshiquiDetail> {
  AssetsAudioPlayer player = AssetsAudioPlayer.newPlayer();
  List<Audio> audios = [
    Audio.network("https://pagalfree.com/musics/128-Sunn%20Raha%20Hai%20(Male)%20-%20Aashiqui%202%20128%20Kbps.mp3",
        metas: Metas(
            title: "Sunn Raha Hai",
            artist: "Sachin-Jigar,Arijit Singh",
            image: MetasImage.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSoithQS5UmhNNn8846kDov9zIh2M-RZ0wwlA&s"))),
    Audio.network(
        "https://pagalfree.com/musics/128-Chahun%20Main%20Ya%20Naa%20-%20Aashiqui%202%20128%20Kbps.mp3",
        metas: Metas(
            title: "Chahun Main Ya Naa",
            artist: "Sachin-Jigar,Arijit Singh",
            image: MetasImage.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRK6ECxzn-UuUnQm7f5tHORUeD6WIuUA0rQSw&s"))),
    Audio.network(
        "https://pagalfree.com/musics/128-Hum%20Mar%20Jayenge%20-%20Aashiqui%202%20128%20Kbps.mp3",
        metas: Metas(
            title: "Hum Mar Jayenge",
            artist: "Sachin-Jigar,Skeletron",
            image: MetasImage.network(
                "https://i1.sndcdn.com/artworks-000047374149-7f27ip-t500x500.jpg"))),
    Audio.network(
        "https://pagalfree.com/musics/128-Meri%20Aashiqui%20-%20Aashiqui%202%20128%20Kbps.mp3",
        metas: Metas(
            title: "Meri Aashiqui",
            artist: "Sachin-Jigar, Hansika Pareek",
            image: MetasImage.network(
                "https://www.pagalworld.us/_big/aashiqui-2-2013-250.jpg"))),
    Audio.network("https://pagalfree.com/musics/128-Piya%20Aaye%20Na%20-%20Aashiqui%202%20128%20Kbps.mp3",
        metas: Metas(
            title: "Piye Aaye Na",
            artist: "Ash King, Sachin-Jigar",
            image: MetasImage.network(
                "https://i1.sndcdn.com/artworks-000062999768-vafzhy-t500x500.jpg"))),
    Audio.network(
        "https://pagalfree.com/musics/128-Bhula%20Dena%20-%20Aashiqui%202%20128%20Kbps.mp3",
        metas: Metas(
            title: "Bhula Dena",
            artist: "AKASH MEHTA",
            image: MetasImage.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTTVnvKfFeyB7zbycOYFYEUPMLV1DmiFQpsTg&s"))),
    Audio.network(
        "https://pagalfree.com/musics/128-Aasan%20Nahin%20Yahan%20-%20Aashiqui%202%20128%20Kbps.mp3",
        metas: Metas(
            title: "Aasan Nahin Yahan",
            artist: "Sachin-Jigar,Arijit Singh",
            image: MetasImage.network(
                "https://www.pagalworld.us/_big/aashiqui-2-2013-250.jpg"))),
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
