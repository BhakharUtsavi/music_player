import 'package:animated_react_button/animated_react_button.dart';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Stree2 extends StatefulWidget {
  const Stree2({super.key});

  @override
  State<Stree2> createState() => _Stree2State();
}

class _Stree2State extends State<Stree2> {

  int cIndex = 0;
  AssetsAudioPlayer player = AssetsAudioPlayer.newPlayer();
  List<Audio> stree = [
    Audio.network("https://www.pagalworld.com.sb/files/download/type/192/id/71834/1.mp3?1",
        metas: Metas(
            title: "Aayi Nai",
            artist: "Ash King, Sachin-Jigar",
            image: MetasImage.network(
                "https://www.pagalworld.com.sb/siteuploads/thumb/sft144/71834_4.jpg"))),
    Audio.network(
        "https://www.pagalworld.com.sb/files/download/type/320/id/71764/1.mp3?1",
        metas: Metas(
            title: "Aaj Ki Raat",
            artist: "Sachin-Jigar,Arijit Singh",
            image: MetasImage.network(
                "https://www.pagalworld.com.sb/siteuploads/thumb/sft144/71764_4.jpg"))),
    Audio.network("https://www.pagalworld.com.sb/files/download/type/128/id/71864/1.mp3?1",
        metas: Metas(
            title: "Tumhare Hi Rahenge",
            artist: "Sachin-Jigar,Arijit Singh",
            image: MetasImage.network(
                "https://www.pagalworld.com.sb/siteuploads/thumb/sft144/71864_4.jpg"))),
    Audio.network(
        "https://www.pagalworld.com.sb/files/download/type/192/id/71884/1.mp3?1",
        metas: Metas(
            title: "Khoobsurat",
            artist: "Sachin-Jigar,Arijit Singh",
            image: MetasImage.network(
                "https://www.pagalworld.com.sb/siteuploads/thumb/sft144/71884_4.jpg"))),
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
  ];

  List<Audio> wishList=[];

  @override
  void initState() {
    super.initState();
    player.open(Playlist(audios: stree), autoStart: false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(backgroundColor: Colors.black,),
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        itemCount: stree.length,
        itemBuilder: (context, index) {
          Audio currentAudio = stree[index];

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
