import 'package:flutter/material.dart';
import 'package:music_player_app/provider/navigation.dart';
import 'package:music_player_app/view/aajkiraat.dart';
import 'package:music_player_app/view/aashiqui2.dart';
import 'package:music_player_app/view/arijit.dart';
import 'package:music_player_app/view/ashiquidetail.dart';
import 'package:music_player_app/view/bollywood.dart';
import 'package:music_player_app/view/bollywooddetail.dart';
import 'package:music_player_app/view/detail.dart';
import 'package:music_player_app/view/english.dart';
import 'package:music_player_app/view/englishdetail.dart';
import 'package:music_player_app/view/gods.dart';
import 'package:music_player_app/view/godsdetail.dart';
import 'package:music_player_app/view/hindi.dart';
import 'package:music_player_app/view/hindidetail.dart';
import 'package:music_player_app/view/homepage.dart';
import 'package:music_player_app/view/munja.dart';
import 'package:music_player_app/view/munjadetail.dart';
import 'package:music_player_app/view/shiddat.dart';
import 'package:music_player_app/view/shiddatdetail.dart';
import 'package:music_player_app/view/songdetail.dart';
import 'package:music_player_app/view/splashscreen.dart';
import 'package:music_player_app/view/stask1.dart';
import 'package:music_player_app/view/stask10.dart';
import 'package:music_player_app/view/stask2.dart';
import 'package:music_player_app/view/stask3.dart';
import 'package:music_player_app/view/stask4.dart';
import 'package:music_player_app/view/stask5.dart';
import 'package:music_player_app/view/stask6.dart';
import 'package:music_player_app/view/stask7.dart';
import 'package:music_player_app/view/stask8.dart';
import 'package:music_player_app/view/stask9.dart';
import 'package:music_player_app/view/still.dart';
import 'package:music_player_app/view/stilldetail.dart';
import 'package:music_player_app/view/stree2.dart';
import 'package:music_player_app/view/stree2detail.dart';
import 'package:music_player_app/view/task1.dart';
import 'package:music_player_app/view/task10.dart';
import 'package:music_player_app/view/task11.dart';
import 'package:music_player_app/view/task12.dart';
import 'package:music_player_app/view/task13.dart';
import 'package:music_player_app/view/task2.dart';
import 'package:music_player_app/view/task3.dart';
import 'package:music_player_app/view/task4.dart';
import 'package:music_player_app/view/task5.dart';
import 'package:music_player_app/view/task6.dart';
import 'package:music_player_app/view/task7.dart';
import 'package:music_player_app/view/task8.dart';
import 'package:music_player_app/view/task9.dart';
import 'package:music_player_app/view/ttask1.dart';
import 'package:music_player_app/view/ttask2.dart';
import 'package:music_player_app/view/wishlist.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => NavigationProvider(),
      )
    ],
    builder: (context, child) {
      return MyApp();
    },
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => SplashCcreen(),
        "task1": (context) => Task1(),
        "task2": (context) => Task2(),
        "task3": (context) => Task3(),
        "task4": (context) => Task4(),
        "task5": (context) => Task5(),
        "task6": (context) => Task6(),
        "task7": (context) => Task7(),
        "task8": (context) => Task8(),
        "task9": (context) => Task9(),
        "task10": (context) => Task10(),
        "task11": (context) => Task11(),
        "task12": (context) => Task12(),
        "task13": (context) => Task13(),

        "stask1": (context) => STtask1(),
        "stask2": (context) => STask2(),
        "detail": (context) => Detail(),
        "stask3": (context) => STask3(),
        "stask4": (context) => STask4(),
        "stask5": (context) => STask5(),
        "stask6": (context) => STask6(),
        "stask7": (context) => STask7(),
        "stask8": (context) => STask8(),
        "stask9": (context) => STask9(),
        "stask10": (context) => STask10(),

       // "ttask1": (context) => TTask1(),
        "ttask2": (context) => TTask2(),

        "home": (context) => HomePage(),
        "munja": (context) => Munja(),
        "munjadetail": (context) => MunjaDetail(),
        "stree2": (context) => Stree2(),
        "stree2detail": (context) => Stree2Detail(),
        "gods": (context) => Gods(),
        "godsdetail": (context) => GodsDetail(),
        "arijit": (context) => Arijit(),
        "arijitdetail": (context) => Arijit(),
        "english": (context) => English(),
        "englishdetail": (context) => EnglishDetail(),
        "hindi": (context) => Hindi(),
        "hindidetail": (context) => HindiDetail(),
        "shiddat": (context) => Shiddat(),
        "shiddatdetail": (context) => ShiddatDetail(),
        "bollywood": (context) => Bollywood(),
        "bollywooddetail": (context) => BollywoodDetail(),
        "aajkiraat": (context) => AajKiRaat(),
        "songdetail": (context) => SongDetailsScreen(),
        "ashiquidetail": (context) => AshiquiDetail(),
        "aashiqui2": (context) => Aashiqui2(),
        "still": (context) => Still(),
        "stilldetail": (context) => StillDetail(),
        "wishlist": (context) => WishList(),
        "videodetailscreen": (context) => VideoDetailScreen(),
      },
    );
  }
}
