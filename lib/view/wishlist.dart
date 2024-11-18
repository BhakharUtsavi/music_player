import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WishList extends StatefulWidget {
  const WishList({super.key});

  @override
  State<WishList> createState() => _WishListState();
}

class _WishListState extends State<WishList> {

  AssetsAudioPlayer player = AssetsAudioPlayer.newPlayer();
  List<Audio> munja = [
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
  ];
  List<Audio> wishList=[];

  @override
  void initState() {
    super.initState();
    player.open(Playlist(audios: munja), autoStart: false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back,color: Colors.white,)),
        backgroundColor: Colors.black,
        title: Text("Liked Songs",style: GoogleFonts.roboto(color: Colors.white,fontSize: 24),),
      ),

      body: wishList.isEmpty
        ? Center(child: Text("No Favorite Yet!",style: GoogleFonts.roboto(color: Colors.white,fontSize: 24),),)
          : ListView.builder(
                  //shrinkWrap: true,
                  //physics: NeverScrollableScrollPhysics(),
                  padding: const EdgeInsets.only(right: 15, left: 15),
                  itemBuilder: (context, index) {
          return ListTile(
            trailing: IconButton(
              icon: Icon(Icons.play_circle, color: Colors.white),
              onPressed: () {
                player.playlistPlayAtIndex(index);
              },
            ),
            leading: CircleAvatar(
              radius: 35,
              backgroundImage: NetworkImage(
                wishList[index].metas.image?.path ??
                    'https://c.saavncdn.com/504/Tainu-Khabar-Nahi-From-Munjya-Hindi-2024-20240601193522-500x500.jpg',
              ),
            ),
            title: Text(
              wishList[index].metas.title ?? "Unknown",
              style: GoogleFonts.roboto(color: Colors.white,
                  fontWeight: FontWeight.bold, fontSize: 16),
            ),
            subtitle: Text(
              wishList[index].metas.artist ?? "Unknown",
              style: GoogleFonts.roboto(color: Colors.grey,),
            ),
          );
                  },
                  itemCount: wishList.length,
                ),
    );
  }
}
