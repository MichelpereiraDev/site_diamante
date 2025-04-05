import 'package:flutter/material.dart';
import 'package:pousada_diamante/models/imageCarrosel.dart';
import 'package:pousada_diamante/sections/recent_work/components/imageCard.dart';

final card = ImagecardState();

class RecentWork {
  final String image, category, title;
  final int id;
  final Widget link;

  RecentWork(
      {required this.id,
      required this.image,
      required this.category,
      required this.title,
      required this.link});
}

// Demo List of my works
List<RecentWork> recentWorks = [
  RecentWork(
      id: 1,
      title: "Ar condicionado,TV, Frigobar, Tomadas nas camas",
      category: "Diamante",
      image: "assets/images/diamante.png",
      link: card.cardDiamante()),
  RecentWork(
      id: 2,
      title: "Ar condicionado,TV, Frigobar, Tomadas nas camas",
      category: "Rubi",
      image: "assets/images/rubi.png",
      link: card.cardRubi()),
  RecentWork(
      id: 3,
      title: "Ar condicionado,TV, Frigobar, Tomadas nas camas",
      category: "Ametista",
      image: "assets/images/ametista.png",
      link: card.cardAmetista()),
  RecentWork(
      id: 4,
      title: "Ar condicionado,TV, Frigobar, Tomadas nas camas",
      category: "Turmalina",
      image: "assets/images/turmalina.png",
      link: card.cardTurmalina()),
  RecentWork(
      id: 5,
      title: "Ar condicionado,TV, Frigobar, Tomadas nas camas",
      category: "Turquesa",
      image: "assets/images/turquesa.png",
      link: card.cardTurquesa()),
];
