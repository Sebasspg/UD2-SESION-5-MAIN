import 'package:flutter/material.dart';

class TiktokWidget extends StatelessWidget {
  final String? img;
  final String? username;

  const TiktokWidget({super.key, this.img, this.username});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.network(fit: BoxFit.fill, '$img'),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Image.network(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXuzt2s8nfTKBrSQTx1lNn9M8vIRY0xujttj2HD75gu1yTGxF8Gz75KAMpWf1qlgMlV_U&usqp=CAU',
                          width: 25,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          '$username',
                          style: const TextStyle(fontSize: 18),
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('#Hola mundo #Flutter'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: const [
                        Icon(
                          Icons.favorite, size: 28,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.chat_outlined, size: 28,
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Icon(
                          Icons.send_outlined, size: 28,
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        Icon(
                          Icons.pending_outlined, size: 28,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
