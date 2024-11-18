import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Aashiqui2 extends StatefulWidget {
  const Aashiqui2({super.key});

  @override
  State<Aashiqui2> createState() => _Aashiqui2State();
}

class _Aashiqui2State extends State<Aashiqui2> {

  int cIndex = 0;
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
  List<Audio> wishList=[];

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
                'ashiquidetail',
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
