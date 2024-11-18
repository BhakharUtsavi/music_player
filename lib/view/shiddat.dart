import 'package:animated_react_button/animated_react_button.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Shiddat extends StatefulWidget {
  const Shiddat({super.key});

  @override
  State<Shiddat> createState() => _ShiddatState();
}

class _ShiddatState extends State<Shiddat> {

  int cIndex = 0;
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
                'songdetail',
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
