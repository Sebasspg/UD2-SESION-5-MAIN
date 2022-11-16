import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/sesion6/widgets/custombuttonw.dart';
import 'package:google_fonts/google_fonts.dart';


class Home6Screen extends StatefulWidget {
  const Home6Screen({super.key});

  @override
  State<Home6Screen> createState() => _Home6ScreenState();
}

class _Home6ScreenState extends State<Home6Screen> {
  int numero = 0;

  void aumentar() {
    setState(() {
      numero++;
    });
  }

  void disminuir() {
    setState(() {
      numero--;
    });
  }

  void resetear() {
    setState(() {
      numero = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 23, 12, 59),
      appBar: AppBar(
        title: Text(
          'SESIÓN 6',
          style: GoogleFonts.poppins(),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            Image.network(
              'https://png.pngtree.com/png-vector/20220119/ourlarge/pngtree-creative-animal-avatar-art-small-illustration-design-png-image_4323467.png',
              width: 140,
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Mi nombre es:',
                      style: GoogleFonts.quicksand(
                          fontSize: 15, color: Colors.white),
                    ),
                    Text(
                      'Y mis apellidos son:',
                      style: GoogleFonts.quicksand(
                          fontSize: 15, color: Colors.white),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      'Sebastian Alfonso',
                      style: GoogleFonts.quicksand(
                          fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Pulido Gastelú',
                      style: GoogleFonts.quicksand(
                          fontSize: 15, color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              'CONTADOR',
              style: GoogleFonts.quicksand(fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
            ),
            Text(
              '$numero',
              style: GoogleFonts.quicksand(fontSize: 24, color: Colors.white),
            ),
          ],
        ),
      ),
      floatingActionButton: CustomButtonW(
        incrementarb: () => aumentar(),
        disminuirb: () => disminuir(),
        resetb: () => resetear(),
      ),
    );
  }
}
