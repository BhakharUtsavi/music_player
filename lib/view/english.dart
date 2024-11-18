import 'package:animated_react_button/animated_react_button.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class English extends StatefulWidget {
  const English({super.key});

  @override
  State<English> createState() => _EnglishState();
}

class _EnglishState extends State<English> {

  int cIndex = 0;
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
  List<Audio> wishList = [];

  @override
  void initState() {
    super.initState();
    player.open(Playlist(audios: audios), autoStart: false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: Colors.black,),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        itemCount: audios.length,
        itemBuilder: (context, index) {
          Audio currentAudio = audios[index];

          return ListTile(
            onTap: () {
              Navigator.pushNamed(
                context,
                'englishdetail',
                arguments: {
                  'title': currentAudio.metas.title ?? "Unknown",
                  'artist': currentAudio.metas.artist ?? "Unknown Artist",
                  'imageUrl': currentAudio.metas.image?.path ??
                      'https://via.placeholder.com/150',
                },
              );
            },
            leading: CircleAvatar(
              radius: 35,
              backgroundImage: NetworkImage(
                currentAudio.metas.image?.path ??
                    'https://via.placeholder.com/150',
              ),
            ),
            title: Text(
              currentAudio.metas.title ?? "Unknown",
              style: GoogleFonts.roboto(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
            ),
            subtitle: Text(
              currentAudio.metas.artist ?? "Unknown Artist",
              style: GoogleFonts.roboto(color: Colors.grey),
            ),
            trailing: Icon(Icons.chevron_right, color: Colors.white),
          );
        },
      ),
    );
  }
}
