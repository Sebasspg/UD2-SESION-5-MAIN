
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/sesion7/widgets/plantillawidget.dart';

import 'package:tiktoklikescroller/tiktoklikescroller.dart';

class ScrollTiktokPage extends StatefulWidget {
  const ScrollTiktokPage({super.key});

  @override
  State<ScrollTiktokPage> createState() => _ScrollTiktokPageState();
}

class _ScrollTiktokPageState extends State<ScrollTiktokPage> {
  late Controller controller;

  final List<dynamic> data = [
    {
      'img':
          'https://media.istockphoto.com/id/585769692/es/foto/deliciosos-espaguetis-servidos-en-un-plato-negro.jpg?s=612x612&w=0&k=20&c=wTvUuNJWr0kZs8wo69Kf_kHSkLgWhUl7Z8blaEpc6d8=',
      'title': 'TALLARINES ROJOS',
      'content':
          'Un plato muy popular en Perú. Una receta sencilla de preparar, perfecta para diario, fruto de la fusión de la gastronomía peruana con la italiana.'
    },
    {
      'img':
          'https://cdn.pixabay.com/photo/2019/09/25/19/03/food-4504377__340.jpg',
      'title': 'CEVICHE',
      'content':
          'Un plato típico de la gastronomía peruana y ha tenido tanto éxito que sus sabores se han extendido a otros países latinoamericanos.'
    },
    {
      'img':
          'https://media.gettyimages.com/id/155370513/es/foto/lomo-saltado-peruano-sofrito-carne-de-res.jpg?s=612x612&w=0&k=20&c=y6vWVKE82Tx3Tw1AvfjXzAy3tkL5DhKxmGyZp_QP6oM=',
      'title': 'LOMO SALTADO',
      'content':
          'Un plato sumamente popular de la llamada cocina fusión que combina la tradición de la gastronomía china de saltear los alimentos con ingredientes peruanos.'
    },
    {
      'img':
          'https://media.gettyimages.com/id/1174305970/es/foto/sopa-mulligatawny-con-naan.jpg?s=612x612&w=0&k=20&c=MepTnrzVNGbUaVil8QNwCyQiToR0g7FFF8AoSnsZ3Ak=',
      'title': 'SOPA DE POLLO',
      'content':
          'Esta es la típica sopa que cuando hace frío te hace acordarte de tu casa.'
    },
    {
      'img':
          'https://media.gettyimages.com/id/1167979038/es/foto/chaufa-peruvian-food.jpg?s=612x612&w=0&k=20&c=vRWxvoTw8MFbF6JsLed1RGHGUTyANC31g3mwrKpuUlA=',
      'title': 'ARROZ CHAUFA',
      'content':
          'Son muchas las variaciones que se pueden hacer para este delicioso platillo de influencia china.'
    },
    {
      'img':
          'https://media.gettyimages.com/id/691103589/es/foto/cropped-image-of-person-holding-sushi-at-table.jpg?s=612x612&w=0&k=20&c=3J38HTP4mkASsTAjwHja1WJxBJrORFkHRD3lIxojcyw=',
      'title': 'SUSHI',
      'content':
          'Fabulosa combinación de sabores. Aunque su origen sea japonés, es un plato que nos invita a ser creativos y mezclar alimentos que no sean solamente orientales.'
    },
    {
      'img':
          'https://media.gettyimages.com/id/1132695977/es/foto/the-chicharr%C3%B3n-of-fish-peruvian-dish.jpg?s=612x612&w=0&k=20&c=51jdaHC9cjhilmbpATfm8d3ydaNI0jmskM4InYjjuEQ=',
      'title': 'CHICHARRÓN',
      'content':
          'Estos chicharroncitos de pescado son deliciosos y perfectos para servir como un aperitivo, acompañados de salsa tártara, en una reunión o para cualquier comida.'
    }
  ];

  Controller? testingController;

  @override
  void initState() {
    controller = testingController ?? Controller()
      ..addListener((event) {
        _handleCallbackEvent(event.direction, event.success);
      });
    super.initState();
  }

  void _handleCallbackEvent(ScrollDirection direction, ScrollSuccess success,
      {int? currentIndex}) {
    print(
        "Scroll callback received with data: {direction: $direction, success: $success and index: ${currentIndex ?? 'not given'}}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:
      AppBar(
        title: const Text('Sesion 7'),
        centerTitle: true,
      ),
      body: TikTokStyleFullPageScroller(
          contentSize: data.length,
          swipePositionThreshold: 0.2,
          swipeVelocityThreshold: 2000,
          animationDuration: const Duration(milliseconds: 400),
          controller: controller,
          builder: (BuildContext context, int index) {
            final sitios = data[index];

            return PlantillaWidget(
              img: sitios['img'],
              title: sitios['title'],
              content: sitios['content'],
            );
          }),
    );
  }
}