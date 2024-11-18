import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:music_player_app/utils/global.dart';

class STtask1 extends StatefulWidget {
  const STtask1({super.key});

  @override
  State<STtask1> createState() => _STtask1State();
}

class _STtask1State extends State<STtask1> {

  int cIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Task 1"),),
      body: Column(
        children: [
          CarouselSlider(items: audioList.map((e){
            return Container(
              width: double.infinity,
              margin: EdgeInsets.all(1),
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey,
              ),
              child: Text(e.name ?? ""),
            );
          }).toList(), options: CarouselOptions(
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 1),
            enableInfiniteScroll: true,
          )),

          SizedBox(
            height: 50,
            child: ListView.separated(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemBuilder: (context,index){
              bool isCurrent = index == cIndex;
              return CircleAvatar(
                radius: isCurrent ? 5 : 3,
                backgroundColor: isCurrent ? Colors.black : Colors.black45,
              );
            }, separatorBuilder: (context,index){
              return SizedBox(width: 4,);
            }, itemCount: audioList.length),
          )
        ],
      ),
    );
  }
}
