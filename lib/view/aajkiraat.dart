// import 'package:animated_react_button/animated_react_button.dart';
// import 'package:assets_audio_player/assets_audio_player.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
//
// class AajKiRaat extends StatefulWidget {
//   const AajKiRaat({super.key});
//
//   @override
//   State<AajKiRaat> createState() => _AajKiRaatState();
// }
//
// class _AajKiRaatState extends State<AajKiRaat> {
//
//   int cIndex = 0;
//   AssetsAudioPlayer player = AssetsAudioPlayer.newPlayer();
//   List<Audio> audios = [
//     Audio.network(
//         "https://www.pagalworld.com.sb/files/download/type/320/id/71764/1.mp3?1",
//         metas: Metas(
//             title: "Aaj Ki Raat",
//             artist: "Sachin-Jigar,Arijit Singh",
//             image: MetasImage.network(
//                 "https://www.pagalworld.com.sb/siteuploads/thumb/sft144/71764_4.jpg"))),
//   ];
//   List<Audio> wishList=[];
//
//   @override
//   void initState() {
//     super.initState();
//     player.open(Playlist(audios: audios), autoStart: false);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: Container(
//         child: Column(
//           children: [
//             Expanded(
//               child: SingleChildScrollView(
//                 child: Column(
//                   children: [
//                     SizedBox(height: 50),
//                     // SizedBox(
//                     //   height: 150,
//                     //   child: ListView.separated(
//                     //     padding: const EdgeInsets.only(right: 15, left: 15),
//                     //     scrollDirection: Axis.horizontal,
//                     //     itemBuilder: (context, index) {
//                     //       String path = audios[index].path;
//                     //       return InkWell(
//                     //         onTap: () {
//                     //           // player.open(
//                     //           //   Audio.network(path),
//                     //           // );
//                     //           player.playlistPlayAtIndex(index);
//                     //         },
//                     //         child: CircleAvatar(
//                     //           radius: 55,
//                     //           child: Text(path ?? ""),
//                     //         ),
//                     //       );
//                     //     },
//                     //     separatorBuilder: (BuildContext context, int index) {
//                     //       return SizedBox(width: 10);
//                     //     },
//                     //     itemCount: audios.length,
//                     //   ),
//                     // ),
//                     // CarouselSlider(
//                     //   items: audios
//                     //       .map((e) => Container(
//                     //       width: double.infinity,
//                     //       margin: EdgeInsets.all(1),
//                     //       padding: EdgeInsets.all(12),
//                     //       decoration: BoxDecoration(
//                     //         borderRadius: BorderRadius.circular(20),
//                     //         color: Colors.grey,
//                     //       ),
//                     //       child: Column(
//                     //         children: [
//                     //           Image.network(
//                     //             e.metas.image!.path,
//                     //             height: 100,
//                     //             width: 100,
//                     //           ),
//                     //           // Text(
//                     //           //   e.metas.title ?? "Unknown Title",
//                     //           //   style: const TextStyle(
//                     //           //     fontSize: 18,
//                     //           //     fontWeight: FontWeight.bold,
//                     //           //   ),
//                     //           // ),
//                     //           // Text(
//                     //           //   e.metas.artist ?? "Unknown Artist",
//                     //           //   style: const TextStyle(
//                     //           //     fontSize: 14,
//                     //           //     color: Colors.grey,
//                     //           //   ),
//                     //           // ),
//                     //         ],
//                     //       )))
//                     //       .toList(),
//                     //   options: CarouselOptions(
//                     //       autoPlay: true,
//                     //       enableInfiniteScroll: true,
//                     //       viewportFraction: 0.8,
//                     //       onPageChanged: (index, reason) {
//                     //         setState(() {
//                     //           cIndex = index;
//                     //           print("onPageChanged $index");
//                     //         });
//                     //       },
//                     //       // autoPlayAnimationDuration: Duration(milliseconds: 100),
//                     //       autoPlayInterval: Duration(seconds: 1),
//                     //       enlargeCenterPage: true,
//                     //       enlargeFactor: 0.2
//                     //     // aspectRatio: 1,
//                     //   ),
//                     // ),
//                     // SizedBox(
//                     //   height: 50,
//                     //   child: ListView.separated(
//                     //     scrollDirection: Axis.horizontal,
//                     //     shrinkWrap: true,
//                     //     itemBuilder: (context, index) {
//                     //       bool isCurrent = index == cIndex;
//                     //       return CircleAvatar(
//                     //         radius: isCurrent ? 5 : 3,
//                     //         backgroundColor:
//                     //         isCurrent ? Colors.black : Colors.black45,
//                     //       );
//                     //     },
//                     //     itemCount: audioList.length,
//                     //     separatorBuilder: (BuildContext context, int index) {
//                     //       return SizedBox(
//                     //         width: 4,
//                     //       );
//                     //     },
//                     //   ),
//                     // ),
//                     // SizedBox(height: 10),
//
//                     // ListView.builder(
//                     //   shrinkWrap: true,
//                     //   physics: NeverScrollableScrollPhysics(),
//                     //   padding: const EdgeInsets.only(right: 15, left: 15),
//                     //   itemBuilder: (context, index) {
//                     //     String path = audios[index].path;
//                     //     return ListTile(
//                     //       trailing: SizedBox(
//                     //         width: 70,
//                     //         child: Row(
//                     //           children: [
//                     //             InkWell(
//                     //                 onTap: () {
//                     //                   player.playlistPlayAtIndex(index);
//                     //                 },
//                     //                 child: Icon(
//                     //                   color: Colors.white,
//                     //                   Icons.play_circle,
//                     //                 )),
//                     //             SizedBox(width: 10,),
//                     //             AnimatedReactButton(
//                     //                 defaultColor: Colors.grey,
//                     //                 reactColor: Colors.red,
//                     //                 onPressed: () async {
//                     //                   await Future.delayed(Duration(seconds: 1));
//                     //                   setState(() {
//                     //                     if (!wishList.contains(audios[index])) {
//                     //                       wishList.add(audios[index]);
//                     //                     }
//                     //                     //wishList.add((munja[index]));
//                     //                   });
//                     //                 }),
//                     //           ],
//                     //         ),
//                     //       ),
//                     //       leading: CircleAvatar(
//                     //         radius: 35,
//                     //         backgroundImage: NetworkImage(
//                     //           audios[index].metas.image?.path ??
//                     //               'https://c.saavncdn.com/504/Tainu-Khabar-Nahi-From-Munjya-Hindi-2024-20240601193522-500x500.jpg',
//                     //         ),
//                     //       ),
//                     //       title: Text(
//                     //         audios[index].metas.title ?? "Unknown",
//                     //         style: GoogleFonts.roboto(color: Colors.white,
//                     //             fontWeight: FontWeight.bold, fontSize: 16),
//                     //       ),
//                     //       subtitle: Text(
//                     //         audios[index].metas.artist ?? "Unknown",
//                     //         style: GoogleFonts.roboto(color: Colors.grey),
//                     //       ),
//                     //     );
//                     //   },
//                     //   itemCount: audios.length,
//                     // ),
//                     ListView.builder(
//                       padding: const EdgeInsets.symmetric(horizontal: 15),
//                       itemCount: audios.length,
//                       itemBuilder: (context, index) {
//                         Audio currentAudio = audios[index];
//
//                         return ListTile(
//                           onTap: () {
//                             Navigator.pushNamed(
//                               context,
//                               'songdetail',
//                               arguments: {
//                                 'title': currentAudio.metas.title ?? "Unknown",
//                                 'artist': currentAudio.metas.artist ?? "Unknown Artist",
//                                 'imageUrl': currentAudio.metas.image?.path ??
//                                     'https://via.placeholder.com/150',
//                               },
//                             );
//                           },
//                           leading: CircleAvatar(
//                             radius: 35,
//                             backgroundImage: NetworkImage(
//                               currentAudio.metas.image?.path ??
//                                   'https://via.placeholder.com/150',
//                             ),
//                           ),
//                           title: Text(
//                             currentAudio.metas.title ?? "Unknown",
//                             style: GoogleFonts.roboto(
//                               color: Colors.white,
//                               fontWeight: FontWeight.bold,
//                               fontSize: 16,
//                             ),
//                           ),
//                           subtitle: Text(
//                             currentAudio.metas.artist ?? "Unknown Artist",
//                             style: GoogleFonts.roboto(color: Colors.grey),
//                           ),
//                           trailing: Icon(Icons.chevron_right, color: Colors.white),
//                         );
//                       },
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Container(
//               color: Colors.grey.shade900,
//               child: Column(
//                 children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       IconButton(
//                           onPressed: () {
//                             player.previous();
//                           },
//                           icon: Icon(
//                             Icons.skip_previous,
//                             color: Colors.white,
//                           )),
//                       StreamBuilder<bool>(
//                           stream: player.isPlaying,
//                           builder: (context, snapshot) {
//                             bool isPlay = snapshot.data ?? false;
//                             return IconButton(
//                                 onPressed: () {
//                                   player.playOrPause();
//                                 },
//                                 icon: Icon(
//                                   isPlay ? Icons.pause : Icons.play_arrow,
//                                   color: Colors.white,
//                                 ));
//                           }),
//                       IconButton(
//                           onPressed: () {
//                             player.next();
//                           },
//                           icon: Icon(
//                             Icons.skip_next,
//                             color: Colors.white,
//                           )),
//                     ],
//                   ),
//                   StreamBuilder<Playing?>(
//                       stream: player.current,
//                       builder: (context, snapshot) {
//                         Playing? data = snapshot.data;
//                         Duration? audioDuration = data?.audio.duration;
//                         if (audioDuration?.inSeconds != null) {
//                           return StreamBuilder<Duration>(
//                               stream: player.currentPosition,
//                               builder: (context, snapshot) {
//                                 var duration = snapshot.data;
//                                 return Slider(
//                                   activeColor: Colors.grey,
//                                   thumbColor: Colors.grey,
//                                   value: (duration?.inSeconds ?? 0).toDouble(),
//                                   min: 0,
//                                   max: (audioDuration?.inSeconds ?? 1)
//                                       .toDouble(),
//                                   onChanged: (value) {
//                                     player.seek(
//                                       Duration(seconds: value.toInt()),
//                                     );
//                                   },
//                                 );
//                               });
//                         } else {
//                           return CircularProgressIndicator();
//                         }
//                       })
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:assets_audio_player/assets_audio_player.dart';
//
// class AajKiRaat extends StatefulWidget {
//   const AajKiRaat({super.key});
//
//   @override
//   State<AajKiRaat> createState() => _AajKiRaatState();
// }
//
// class _AajKiRaatState extends State<AajKiRaat> {
//   AssetsAudioPlayer player = AssetsAudioPlayer.newPlayer();
//
//   List<Audio> audios = [
//     Audio.network(
//       "https://www.pagalworld.com.sb/files/download/type/320/id/71764/1.mp3?1",
//       metas: Metas(
//         title: "Aaj Ki Raat",
//         artist: "Sachin-Jigar, Arijit Singh",
//         image: MetasImage.network(
//           "https://www.pagalworld.com.sb/siteuploads/thumb/sft144/71764_4.jpg",
//         ),
//       ),
//     ),
//   ];
//
//   @override
//   void initState() {
//     super.initState();
//     player.open(Playlist(audios: audios), autoStart: false);
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: ListView.builder(
//         padding: const EdgeInsets.symmetric(horizontal: 15),
//         itemCount: audios.length,
//         itemBuilder: (context, index) {
//           Audio currentAudio = audios[index];
//
//           return ListTile(
//             onTap: () {
//               Navigator.pushNamed(
//                 context,
//                 'songdetail',
//                 arguments: {
//                   'title': currentAudio.metas.title ?? "Unknown",
//                   'artist': currentAudio.metas.artist ?? "Unknown Artist",
//                   'imageUrl': currentAudio.metas.image?.path ??
//                       'https://via.placeholder.com/150',
//                 },
//               );
//             },
//             leading: CircleAvatar(
//               radius: 35,
//               backgroundImage: NetworkImage(
//                 currentAudio.metas.image?.path ??
//                     'https://via.placeholder.com/150',
//               ),
//             ),
//             title: Text(
//               currentAudio.metas.title ?? "Unknown",
//               style: GoogleFonts.roboto(
//                 color: Colors.white,
//                 fontWeight: FontWeight.bold,
//                 fontSize: 16,
//               ),
//             ),
//             subtitle: Text(
//               currentAudio.metas.artist ?? "Unknown Artist",
//               style: GoogleFonts.roboto(color: Colors.grey),
//             ),
//             trailing: Icon(Icons.chevron_right, color: Colors.white),
//           );
//         },
//       ),
//     );
//   }
// }


import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AajKiRaat extends StatefulWidget {
  const AajKiRaat({super.key});

  @override
  State<AajKiRaat> createState() => _AajKiRaatState();
}

class _AajKiRaatState extends State<AajKiRaat> {
  AssetsAudioPlayer player = AssetsAudioPlayer.newPlayer();

  List<Audio> audios = [
    Audio.network(
      "https://www.pagalworld.com.sb/files/download/type/320/id/71764/1.mp3?1",
      metas: Metas(
        title: "Aaj Ki Raat",
        artist: "Sachin-Jigar, Arijit Singh",
        image: MetasImage.network(
          "https://www.pagalworld.com.sb/siteuploads/thumb/sft144/71764_4.jpg",
        ),
      ),
    ),
  ];

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
