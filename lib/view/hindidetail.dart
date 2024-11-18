import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HindiDetail extends StatefulWidget {
  const HindiDetail({super.key});

  @override
  State<HindiDetail> createState() => _HindiDetailState();
}

class _HindiDetailState extends State<HindiDetail> {
  AssetsAudioPlayer player = AssetsAudioPlayer.newPlayer();
  List<Audio> audios = [
    Audio.network("https://pagal-world.com.in/files/download/id/996",
        metas: Metas(
            title: "Tainu Khabar Nahi - From Munjya",
            artist: "Sachin-Jigar,Arijit Singh",
            image: MetasImage.network(
                "https://c.saavncdn.com/504/Tainu-Khabar-Nahi-From-Munjya-Hindi-2024-20240601193522-500x500.jpg"))),
    Audio.network(
        "https://www.pagalworld.com.sb/files/download/type/128/id/68759/1.mp3?1",
        metas: Metas(
            title: "Hai Jamalo - From Munjya",
            artist: "Sachin-Jigar,Arijit Singh",
            image: MetasImage.network(
                "https://img.wynk.in/unsafe/200x200/filters:no_upscale():strip_exif():format(jpg)/http://s3.ap-south-1.amazonaws.com/wynk-music-cms/srch_zeemusic/2024-06/06/08-59/ZMC08401.jpg"))),
    Audio.network(
        "https://www.pagalworld.com.sb/files/download/type/192/id/71827/1.mp3?1",
        metas: Metas(
            title: "Tum Se Mil Ke - From Munjya",
            artist: "Sachin-Jigar,Skeletron",
            image: MetasImage.network(
                "https://c.saavncdn.com/009/Munjya-Hindi-2024-20240617102525-500x500.jpg"))),
    Audio.network(
        "https://www.pagalworld.com.sb/files/download/type/320/id/778/1.mp3?1",
        metas: Metas(
            title: "Lori - From Munjya",
            artist: "Sachin-Jigar, Hansika Pareek",
            image: MetasImage.network(
                "https://www.pagalworld.com.sb/siteuploads/thumb/sft2/778_4.jpg"))),
    Audio.network("https://pagalnew.com/128-download/2791",
        metas: Metas(
            title: "Nazar Na Lag Jaaye",
            artist: "Ash King, Sachin-Jigar",
            image: MetasImage.network(
                "https://pagalworld.com.pk/storage/thumbimages/album/stree-2018-ImageBw.jpg"))),
    Audio.network(
        "https://www.pagalworld.com.sb/files/download/type/320/id/6384/1.mp3?1",
        metas: Metas(
            title: "Kirni Hassen",
            artist: "AKASH MEHTA",
            image: MetasImage.network(
                "https://www.pagalworld.com.sb/siteuploads/thumb/sft13/6384_4.jpg"))),
    Audio.network(
        "https://www.pagalworld.com.sb/files/download/type/320/id/72038/1.mp3?1",
        metas: Metas(
            title: "Millionair",
            artist: "Sachin-Jigar,Arijit Singh",
            image: MetasImage.network(
                "https://www.pagalworld.com.sb/siteuploads/thumb/sft145/72173_4.jpg"))),
    Audio.network(
        "https://www.pagalworld.com.sb/files/download/type/320/id/71764/1.mp3?1",
        metas: Metas(
            title: "Aaj Ki Raat",
            artist: "Sachin-Jigar,Arijit Singh",
            image: MetasImage.network(
                "https://www.pagalworld.com.sb/siteuploads/thumb/sft144/71764_4.jpg"))),
    Audio.network(
        "https://www.pagalworld.com.sb/files/download/type/320/id/71866/1.mp3?1",
        metas: Metas(
            title: "Chuttamalle",
            artist: "Sachin-Jigar,Arijit Singh",
            image: MetasImage.network(
                "https://www.pagalworld.com.sb/siteuploads/thumb/sft144/71866_4.jpg"))),
    Audio.network(
        "https://www.pagalworld.com.sb/files/download/type/320/id/68671/1.mp3?1",
        metas: Metas(
            title: "O Mahi",
            artist: "Sachin-Jigar,Arijit Singh",
            image: MetasImage.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSrykEluX1GIY8y8WMerjSEMKfnhdiECoAU6Q&s"))),
    Audio.network(
        "https://www.pagalworld.com.sb/files/download/type/320/id/70608/1.mp3?1",
        metas: Metas(
            title: "Soulmate",
            artist: "Sachin-Jigar,Arijit Singh",
            image: MetasImage.network(
                "https://www.pagalworld.com.sb/siteuploads/thumb/sft142/70608_4.jpg"))),
    Audio.network(
        "https://www.pagalworld.com.sb/files/download/type/320/id/71229/1.mp3?1",
        metas: Metas(
            title: "O Sajni Re",
            artist: "Sachin-Jigar,Arijit Singh",
            image: MetasImage.network(
                "https://www.pagalworld.com.sb/siteuploads/thumb/sft143/71229_4.jpg"))),
    Audio.network(
        "https://www.pagalworld.com.sb/files/download/type/320/id/71627/1.mp3?1",
        metas: Metas(
            title: "Husn Tera Tauba Tauba",
            artist: "Sachin-Jigar,Arijit Singh",
            image: MetasImage.network(
                "https://www.pagalworld.com.sb/siteuploads/thumb/sft144/71627_4.jpg"))),
    Audio.network(
        "https://www.pagalworld.com.sb/files/download/type/320/id/67064/1.mp3?1",
        metas: Metas(
            title: "Guli Mata",
            artist: "Sachin-Jigar,Arijit Singh",
            image: MetasImage.network(
                "https://www.pagalworld.com.sb/siteuploads/thumb/sft135/67064_4.jpg"))),
    Audio.network(
        "https://www.pagalworld.com.sb/files/download/type/320/id/71190/1.mp3?1",
        metas: Metas(
            title: "Yimmy Yimmy",
            artist: "Sachin-Jigar,Arijit Singh",
            image: MetasImage.network(
                "https://www.pagalworld.com.sb/siteuploads/thumb/sft143/71190_4.jpg"))),
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
