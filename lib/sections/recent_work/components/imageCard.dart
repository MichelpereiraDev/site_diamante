import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pousada_diamante/constants.dart';
import 'package:pousada_diamante/models/imageCarrosel.dart';

class Imagecard extends StatefulWidget {
  const Imagecard({super.key});

  @override
  State<Imagecard> createState() => ImagecardState();
}

final imageCarrosel = ImageCarrosel();

class ImagecardState extends State<Imagecard> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
    );
  }

  Widget cardDiamante() {
    return Card(
      color: backgroundCard,
      child: Column(children: [
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Diamante",
              style: TextStyle(
                  fontSize: 24,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            )),
        new CarouselSlider(
          options: CarouselOptions(
            height: 500.0,
            aspectRatio: 16 / 9,
            viewportFraction: 0.8,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,
          ),
          items: imageCarrosel.imageDiamante.map((item) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 27, 27, 27),
                  ),
                  child: Image.asset(item, fit: BoxFit.cover),
                );
              },
            );
          }).toList(),
        ),
      ]),
    );
  }

  Widget cardRubi() {
    return Card(
      color: backgroundCard,
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "Rubi",
            style: TextStyle(
                fontSize: 24,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
        ),
        new CarouselSlider(
          options: CarouselOptions(
            height: 500.0,
            aspectRatio: 16 / 9,
            viewportFraction: 0.8,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,
          ),
          items: imageCarrosel.imageRubi.map((item) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 27, 27, 27),
                  ),
                  child: Image.asset(item, fit: BoxFit.cover),
                );
              },
            );
          }).toList(),
        ),
      ]),
    );
  }

  Widget cardAmetista() {
    return Card(
      color: backgroundCard,
      child: Column(children: [
        Text(
          "Ametista",
          style: TextStyle(
              fontSize: 24,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              color: Colors.black),
        ),
        new CarouselSlider(
          options: CarouselOptions(
            height: 500.0,
            aspectRatio: 16 / 9,
            viewportFraction: 0.8,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,
          ),
          items: imageCarrosel.imageAmetista.map((item) {
            return Builder(
              builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 5.0),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 27, 27, 27),
                  ),
                  child: Image.asset(item, fit: BoxFit.cover),
                );
              },
            );
          }).toList(),
        ),
      ]),
    );
  }

  Widget cardTurmalina() {
    return Card(
        color: backgroundCard,
        child: Column(
          children: [
            Text(
              "Turquesa",
              style: TextStyle(
                  fontSize: 24,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            new CarouselSlider(
              options: CarouselOptions(
                height: 500.0,
                aspectRatio: 16 / 9,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
              ),
              items: imageCarrosel.imageTurmalina.map((item) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 5.0),
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 27, 27, 27),
                      ),
                      child: Image.asset(item, fit: BoxFit.cover),
                    );
                  },
                );
              }).toList(),
            ),
          ],
        ));
  }

  Widget cardTurquesa() {
    return Card(
        color: backgroundCard,
        child: Column(children: [
          Text(
            "Turquesa",
            style: TextStyle(
                fontSize: 24,
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                color: Colors.black),
          ),
          new CarouselSlider(
            options: CarouselOptions(
              height: 500.0,
              aspectRatio: 16 / 9,
              viewportFraction: 0.8,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
            ),
            items: imageCarrosel.imageTurquesa.map((item) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 27, 27, 27),
                    ),
                    child: Image.asset(item, fit: BoxFit.cover),
                  );
                },
              );
            }).toList(),
          ),
        ]));
  }
}
