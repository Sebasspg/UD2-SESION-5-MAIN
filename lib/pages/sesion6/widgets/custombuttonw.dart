import 'package:flutter/material.dart';

class CustomButtonW extends StatelessWidget {
  final Function incrementarb;
  final Function disminuirb;
  final Function resetb;

  const CustomButtonW(
      {super.key,
      required this.incrementarb,
      required this.disminuirb,
      required this.resetb});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                width: 15,
              ),
              MaterialButton(
                color: Color.fromARGB(255, 50, 11, 157),
                height: 70,
                child: const Icon(
                  Icons.exposure_plus_1,
                  color: Colors.white,
                ),
                onPressed: () => incrementarb(),
              ),
              MaterialButton(
                color: Color.fromARGB(255, 50, 11, 157),
                height: 70,
                child: const Icon(
                  Icons.autorenew,
                  color: Colors.white,
                ),
                onPressed: () => resetb(),
              ),
              MaterialButton(
                color: Color.fromARGB(255, 50, 11, 157),
                height: 70,
                child: const Icon(
                  Icons.exposure_neg_1,
                  color: Colors.white,
                ),
                onPressed: () => disminuirb(),
              ),
            ],
          ),
          SizedBox(
            height: 30,
          )
        ],
      ),
    );
  }
}
