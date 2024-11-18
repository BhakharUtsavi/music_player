import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Detail extends StatefulWidget {
  const Detail({super.key});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    Map<String, dynamic> arguments =
    ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;

    final title = arguments['title']!;
    final description = arguments['description']!;
    final imageUrl = arguments['imageUrl']!;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(title,style: GoogleFonts.roboto(color: Colors.white),),
        actions: [
          IconButton(
            icon: Icon(
              isFavorite ? Icons.favorite : Icons.favorite_border,
              color: isFavorite ? Colors.red : Colors.white,
            ),
            onPressed: () {
              setState(() {
                isFavorite = !isFavorite;
              });
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(imageUrl, height: 300, fit: BoxFit.cover),
            SizedBox(height: 16),
            Text(
              title,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16),
            Text(
              description,
              style: TextStyle(fontSize: 16),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
