import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:music_player_app/provider/navigation.dart';
import 'package:provider/provider.dart';

class AudioView extends StatefulWidget {
  const AudioView({super.key});

  @override
  State<AudioView> createState() => _AudioViewState();
}

class _AudioViewState extends State<AudioView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
          Consumer<NavigationProvider>(builder: (context, value, child) {
        return BottomNavigationBar(
          backgroundColor: Colors.black,
            type: BottomNavigationBarType.fixed,
            currentIndex: value.menuIndex,
            onTap: (val) {
              value.pageController?.animateToPage(val,
                  duration: Duration(milliseconds: 100), curve: Curves.linear);
              value.setMenuIndex(val);
            },
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey,
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home,color: Colors.white,),
                label: "Home",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search,color: Colors.white,),
                label: "Search",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.library_books,color: Colors.white,),
                label: "Your Library",
              ),
            ]);
      }),
      body: PageView(
        controller: Provider.of<NavigationProvider>(context, listen: false)
            .pageController,
        onPageChanged: (val) {
          Provider.of<NavigationProvider>(context, listen: false)
              .setMenuIndex(val);
        },
        children: [
          Home(),
          Search(),
          Library(),
        ],
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 12),
                  child: Container(
                    height: 60,
                    width: 160,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade900,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, "munja");
                      },
                      child: Row(
                          children: [
                            Image.network("https://upload.wikimedia.org/wikipedia/en/3/39/Munjya_2024.jpg",height: 70,width: 70,),
                            SizedBox(width: 10,),
                            Expanded(child: Text("Munja all Songs",style: GoogleFonts.roboto(color: Colors.white),softWrap: false,overflow: TextOverflow.ellipsis,maxLines: 2,)),
                          ]),
                    ),
                  ),
                ),
                SizedBox(width: 8,),
                Padding(
                  padding: const EdgeInsets.only(right: 14, top: 12),
                  child: Container(
                    height: 60,
                    width: 160,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade900,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, "stree2");
                      },
                      child: Row(
                          children: [
                            Image.network("https://m.media-amazon.com/images/M/MV5BNWIzZjVmN2EtNGEyMy00MzVlLWIxMmItZjYzZGVjMzQ3N2VkXkEyXkFqcGc@._V1_.jpg",height: 50,width: 50,),
                            SizedBox(width: 10,),
                            Expanded(child: Text("Stree 2 all Songs",style: GoogleFonts.roboto(color: Colors.white),softWrap: false,overflow: TextOverflow.ellipsis,maxLines: 2,)),
                          ]),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 12),
                  child: Container(
                    height: 60,
                    width: 160,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade900,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, "gods");
                      },
                      child: Row(
                          children: [
                            Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQd49wsy1dwTjMen-L2xllSTiFehceaORuYQ&s",height: 70,width: 70,),
                            SizedBox(width: 10,),
                            Expanded(child: Text("All gods songs",style: GoogleFonts.roboto(color: Colors.white),softWrap: false,overflow: TextOverflow.ellipsis,maxLines: 2,)),
                          ]),
                    ),
                  ),
                ),
                SizedBox(width: 8,),
                Padding(
                  padding: const EdgeInsets.only(right: 14, top: 12),
                  child: Container(
                    height: 60,
                    width: 160,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade900,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, "arijit");
                      },
                      child: Row(
                          children: [
                            Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStqfcy_ks2foasxgED598eq2djH142d6_TsA&s",height: 70,width: 70,),
                            SizedBox(width: 10,),
                            Expanded(child: Text("This is Arijit Singh",style: GoogleFonts.roboto(color: Colors.white),softWrap: false,overflow: TextOverflow.ellipsis,maxLines: 2,)),
                          ]),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 16, top: 12),
                  child: Container(
                    height: 60,
                    width: 160,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade900,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, "english");
                      },
                      child: Row(
                          children: [
                            Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4tRtv0u1VoF8GI9ALVpdv0-ejoPW19U2Y0w&s",height: 70,width: 70,),
                            SizedBox(width: 10,),
                            Expanded(child: Text("Hot Hits English songs",style: GoogleFonts.roboto(color: Colors.white),softWrap: false,overflow: TextOverflow.ellipsis,maxLines: 2,)),
                          ]),
                    ),
                  ),
                ),
                SizedBox(width: 8,),
                Padding(
                  padding: const EdgeInsets.only(right: 14, top: 12),
                  child: Container(
                    height: 60,
                    width: 160,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade900,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: GestureDetector(
                      onTap: (){
                        Navigator.pushNamed(context, "hindi");
                      },
                      child: Row(
                          children: [
                            Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5M4ZhGQFYB3ovpat7IPm3UiLvVCeV4LmLfA&s",height: 70,width: 70,),
                            SizedBox(width: 10,),
                            Expanded(child: Text("Hot Hits Hindi songs",style: GoogleFonts.roboto(color: Colors.white),softWrap: false,overflow: TextOverflow.ellipsis,maxLines: 2,)),
                          ]),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text("Jump back in",style: GoogleFonts.roboto(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 24),),
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                   Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                            onTap: (){
                              Navigator.of(context).pushNamed("shiddat");
                            },
                            child: Image.network("https://upload.wikimedia.org/wikipedia/en/thumb/5/5e/Shiddat_poster.jpg/220px-Shiddat_poster.jpg",height: 180,width: 180,)),
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0,top: 5),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Shiddat",style: GoogleFonts.roboto(color: Colors.white,fontWeight: FontWeight.bold),),
                              Text("Various Artists",style: GoogleFonts.roboto(color: Colors.grey),softWrap: false,overflow: TextOverflow.ellipsis,maxLines: 1,),
                            ],
                          ),
                        )
                      ],
                    ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                          onTap: (){
                            Navigator.of(context).pushNamed("bollywood");
                          },
                          child: Image.network("https://image-cdn-ak.spotifycdn.com/image/ab67706c0000da847bf3f58bc885e058fc9bfe9e",height: 180,width: 180,)),
                      Padding(
                        padding: const EdgeInsets.only(left: 0.0,top: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Bollywood Dance Party",style: GoogleFonts.roboto(color: Colors.white,fontWeight: FontWeight.bold),),
                            Text("Best hindi songs",style: GoogleFonts.roboto(color: Colors.grey),softWrap: false,overflow: TextOverflow.ellipsis,maxLines: 1,),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text("Popular albums",style: GoogleFonts.roboto(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 24),),
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).pushNamed("aajkiraat");
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.network("https://s.saregama.tech/image/c/fw_485/a/35/1c/aaj-ki-raat_ott_1440_1721739476.jpg",height: 180,width: 180,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Aaj ki raat",style: GoogleFonts.roboto(color: Colors.white,fontWeight: FontWeight.bold),),
                            ],
                          )
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                            onTap: (){
                              Navigator.of(context).pushNamed("aashiqui2");
                            },
                            child: Image.network("https://play-lh.googleusercontent.com/7hyTow8LZwKCStpLGaN2AyygZ4moBuDpsH_anA-Y9g-mC6kQZyaBXKSC25A7g-755Chn=w240-h480-rw",height: 180,width: 180,)),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 30.0),
                              child: Text("Aashiqui 2",style: GoogleFonts.roboto(color: Colors.white,fontWeight: FontWeight.bold),),
                            ),
                          ],
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                            onTap: (){
                              Navigator.of(context).pushNamed("still");
                            },
                            child: Image.network("https://c.saavncdn.com/704/Still-Rollin-Punjabi-2023-20230512121542-500x500.jpg",height: 180,width: 180,)),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 30.0),
                              child: Text("Still Rollin",style: GoogleFonts.roboto(color: Colors.white,fontWeight: FontWeight.bold),),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {

  final List<Map<String, String>> songs = [
    {"title": "Munja all Songs", "route": "munja", "image": "https://upload.wikimedia.org/wikipedia/en/3/39/Munjya_2024.jpg"},
    {"title": "Stree 2 all Songs", "route": "stree2", "image": "https://m.media-amazon.com/images/M/MV5BNWIzZjVmN2EtNGEyMy00MzVlLWIxMmItZjYzZGVjMzQ3N2VkXkEyXkFqcGc@._V1_.jpg"},
    {"title": "All gods songs", "route": "gods", "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQd49wsy1dwTjMen-L2xllSTiFehceaORuYQ&s"},
    {"title": "This is Arijit Singh", "route": "arijit", "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStqfcy_ks2foasxgED598eq2djH142d6_TsA&s"},
    {"title": "Hot Hits English songs", "route": "english", "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR4tRtv0u1VoF8GI9ALVpdv0-ejoPW19U2Y0w&s"},
    {"title": "Hot Hits Hindi songs", "route": "hindi", "image": "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5M4ZhGQFYB3ovpat7IPm3UiLvVCeV4LmLfA&s"},
  ];

  List<Map<String, String>> searchResults = [];
  final TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    searchResults = List.from(songs);
  }

  void searchSongs(String query) {
    final results = songs.where((song) {
      final titleLower = song["title"]!.toLowerCase();
      final searchLower = query.toLowerCase();
      return titleLower.contains(searchLower);
    }).toList();

    setState(() {
      searchResults = results;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: TextField(
          controller: searchController,
          style: const TextStyle(color: Colors.white),
          decoration: InputDecoration(
            hintText: "Search songs...",
            hintStyle: const TextStyle(color: Colors.grey),
            border: InputBorder.none,
            prefixIcon: const Icon(Icons.search, color: Colors.white),
          ),
          onChanged: searchSongs, // Call search function on input
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: searchResults.map((song) {
            return GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, song["route"]!);
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
                child: Container(
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade900,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Row(
                    children: [
                      Image.network(
                        song["image"]!,
                        height: 60,
                        width: 60,
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          song["title"]!,
                          style: GoogleFonts.roboto(color: Colors.white),
                          softWrap: false,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class Library extends StatefulWidget {
  const Library({super.key});

  @override
  State<Library> createState() => _LibraryState();
}

class _LibraryState extends State<Library> {
  int cIndex = 0;
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
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20,),
            // CarouselSlider(
            //   items: audios
            //       .map((e) => Container(
            //     width: double.infinity,
            //     margin: EdgeInsets.all(1),
            //     padding: EdgeInsets.all(12),
            //     decoration: BoxDecoration(
            //       borderRadius: BorderRadius.circular(20),
            //       color: Colors.grey,
            //     ),
            //     child: Image.asset(e.metas?.image ?? ""),
            //   ))
            //       .toList(),
            //   options: CarouselOptions(
            //       autoPlay: true,
            //       // enableInfiniteScroll: false,
            //       viewportFraction: 0.8,
            //       onPageChanged: (index, reason) {
            //         cIndex = index;
            //         setState(() {});
            //         print("onPageChanged $index");
            //       },
            //       // autoPlayAnimationDuration: Duration(milliseconds: 100),
            //       autoPlayInterval: Duration(seconds: 1),
            //       enlargeCenterPage: true,
            //       enlargeFactor: 0.2
            //     // aspectRatio: 1,
            //   ),
            // ),
            // SizedBox(
            //   height: 50,
            //   child: ListView.separated(
            //     scrollDirection: Axis.horizontal,
            //     shrinkWrap: true,
            //     itemBuilder: (context, index) {
            //       bool isCurrent = index == cIndex;
            //       return CircleAvatar(
            //         radius: isCurrent ? 5 : 3,
            //         backgroundColor:
            //         isCurrent ? Colors.white : Colors.white24,
            //       );
            //     },
            //     itemCount: audios.length,
            //     separatorBuilder: (BuildContext context, int index) {
            //       return SizedBox(
            //         width: 4,
            //       );
            //     },
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text("Jump back in",style: GoogleFonts.roboto(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 24),),
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                          onTap: (){
                            Navigator.of(context).pushNamed("shiddat");
                          },
                          child: Image.network("https://upload.wikimedia.org/wikipedia/en/thumb/5/5e/Shiddat_poster.jpg/220px-Shiddat_poster.jpg",height: 180,width: 180,)),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0,top: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Shiddat",style: GoogleFonts.roboto(color: Colors.white,fontWeight: FontWeight.bold),),
                            Text("Various Artists",style: GoogleFonts.roboto(color: Colors.grey),softWrap: false,overflow: TextOverflow.ellipsis,maxLines: 1,),
                          ],
                        ),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                          onTap: (){
                            Navigator.of(context).pushNamed("bollywood");
                          },
                          child: Image.network("https://image-cdn-ak.spotifycdn.com/image/ab67706c0000da847bf3f58bc885e058fc9bfe9e",height: 180,width: 180,)),
                      Padding(
                        padding: const EdgeInsets.only(left: 0.0,top: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Bollywood Dance Party",style: GoogleFonts.roboto(color: Colors.white,fontWeight: FontWeight.bold),),
                            Text("Best hindi songs",style: GoogleFonts.roboto(color: Colors.grey),softWrap: false,overflow: TextOverflow.ellipsis,maxLines: 1,),
                          ],
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 20,),

            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Text("Popular albums",style: GoogleFonts.roboto(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 24),),
            ),

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).pushNamed("aajkiraat");
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Image.network("https://s.saregama.tech/image/c/fw_485/a/35/1c/aaj-ki-raat_ott_1440_1721739476.jpg",height: 180,width: 180,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Aaj ki raat",style: GoogleFonts.roboto(color: Colors.white,fontWeight: FontWeight.bold),),
                            ],
                          )
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                            onTap: (){
                              Navigator.of(context).pushNamed("aashiqui2");
                            },
                            child: Image.network("https://play-lh.googleusercontent.com/7hyTow8LZwKCStpLGaN2AyygZ4moBuDpsH_anA-Y9g-mC6kQZyaBXKSC25A7g-755Chn=w240-h480-rw",height: 180,width: 180,)),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 30.0),
                              child: Text("Aashiqui 2",style: GoogleFonts.roboto(color: Colors.white,fontWeight: FontWeight.bold),),
                            ),
                          ],
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                            onTap: (){
                              Navigator.of(context).pushNamed("still");
                            },
                            child: Image.network("https://c.saavncdn.com/704/Still-Rollin-Punjabi-2023-20230512121542-500x500.jpg",height: 180,width: 180,)),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 30.0),
                              child: Text("Still Rollin",style: GoogleFonts.roboto(color: Colors.white,fontWeight: FontWeight.bold),),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}