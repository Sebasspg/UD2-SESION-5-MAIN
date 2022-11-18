import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/sesion8/widgets/tiktokwidget.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final PageController controller = PageController();
    final List data = [
      {
        'img':
            'https://cdn.pixabay.com/photo/2018/03/29/07/35/water-3271579__340.jpg',
        'username': 'Usuario 1'
      },
      {
        'img':
            'https://cdn.pixabay.com/photo/2019/11/18/18/29/mountain-4635428__340.jpg',
        'username': 'Usuario 2'
      },
      {
        'img':
            'https://cdn.pixabay.com/photo/2020/08/01/12/18/winnats-pass-5455265__340.jpg',
        'username': 'Usuario 3'
      },
      {
        'img':
            'https://cdn.pixabay.com/photo/2018/11/10/22/57/mountain-3807667__340.jpg',
        'username': 'Usuario 4'
      },
      {
        'img':
            'https://cdn.pixabay.com/photo/2018/04/27/08/56/water-3354063__340.jpg',
        'username': 'Usuario 5'
      },
    ];

    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            PageView.builder(
              scrollDirection: Axis.vertical,
              itemCount: data.length,
              controller: controller,
              itemBuilder: (context, index) {
                final datos = data[index];
                return TiktokWidget(
                  img: datos['img'],
                  username: datos['username'],
                );
              },
            ),
            Container(
              height: 80,
              child: Row(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                        width: 100,
                        child: Text(
                          'Reels', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        width: 180,
                      ),
                      Icon(
                        Icons.camera_alt_outlined, size: 30,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
