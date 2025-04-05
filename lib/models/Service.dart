import 'package:flutter/material.dart';

class Service {
  final int id;
  final String title, image;
  final Color color;

  Service(
      {required this.id,
      required this.title,
      required this.image,
      required this.color});
}

// For demo list of service
List<Service> services = [
  Service(
    id: 1,
    title: "Wi-FI",
    image: "assets/images/wifi.png",
    color: Color(0xFFD9FFFC),
  ),
  Service(
    id: 2,
    title: "Ar condicionado",
    image: "assets/images/arcondicionado.png",
    color: Color(0xFFE4FFC7),
  ),
  Service(
    id: 3,
    title: "TV",
    image: "assets/images/tv.png",
    color: Color(0xFFFFF3DD),
  ),
  Service(
    id: 4,
    title: "Frigobar",
    image: "assets/images/frigobar.png",
    color: Color(0xFFFFE0E0),
  ),
];
