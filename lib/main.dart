import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:myfirst_layouts/data/data_recetas.dart';
import 'package:myfirst_layouts/models/model_receta.dart';
import 'widget/title_section.dart';
import 'widget/button_section.dart';
import 'widget/button_column.dart';
import 'widget/text_section.dart';
import 'widget/snackbar_button.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [
            SizedBox(height: 30),
            CarouselSlider.builder(
              itemCount: carruselImages.length , 
              itemBuilder: (context, index, realIndex) {
                final carrusellImage = carruselImages[index];
                return cardImages(carruselImages: carruselImages[index],);
              }, 
              options: CarouselOptions(
                height: 200.0,
                autoPlay: true,
                autoPlayCurve: Curves.easeInOut,
                enlargeCenterPage: true,
                autoPlayInterval: Duration(seconds: 5),
                scrollDirection: Axis.horizontal,
              ),
              ),
            titleSection,
            ButtomSection(),
            textSection,
          ]
        ),
      ),
    );
  }
}



class cardImages extends StatelessWidget {
  final receta carruselImages;
  const cardImages({super.key, required this.carruselImages});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 400,
      child: ClipRRect(borderRadius: BorderRadius.circular(20),
      child: InkWell(
        onTap: (){},
        child: FadeInImage(
          placeholder: AssetImage("assets/charge.gif") , 
          image: AssetImage(
            carruselImages.image),
          fit: BoxFit.cover,
          ),
      ),
      )
    );
  }
}
