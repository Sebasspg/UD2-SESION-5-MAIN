import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PlantillaWidget extends StatelessWidget {
  final String? img;
  final String? title;
  final String? content;

  const PlantillaWidget({super.key, this.img, this.title, this.content});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.infinity,
          height: 350,
          child: Image.network(
            '$img',
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '$title',
                      style: GoogleFonts.quicksand(
                          fontSize: 26, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 270,
                child: Text(
                  '$content',
                  style: GoogleFonts.quicksand(fontSize: 12),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
        MaterialButton(
            height: 30,
            minWidth: 150,
            color: const Color.fromARGB(255, 255, 128, 0),
            child: Text(
              'VER RECETA',
              style: GoogleFonts.quicksand(
                  fontSize: 10,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            onPressed: () {})
      ],
    );
  }
}
