import 'package:flutter/material.dart';

class Feedback {
  final String name, review, userPic;
  final int id;
  final Color color;

  Feedback(
      {required this.name,
      required this.review,
      required this.userPic,
      required this.id,
      required this.color});
}

// List of demo feedbacks
List<Feedback> feedbacks = [
  Feedback(
    id: 1,
    name: "Ana Souza, SP",
    review:
        'Minha estadia na pousada foi simplesmente maravilhosa! O ambiente é encantador, com uma decoração rústica que nos faz sentir em casa. Os funcionários são super atenciosos e prestativos, sempre prontos para ajudar.',
    userPic: "assets/images/hand.png",
    color: Color(0xFFFFF3DD),
  ),
  Feedback(
    id: 2,
    name: "Carlos Pereira, RJ",
    review:
        'Fiquei na pousada por um final de semana e, embora o local seja muito bonito e bem localizado, achei o serviço um pouco abaixo das expectativas. O quarto estava limpo, mas o chuveiro não funcionava direito,',
    userPic: "assets/images/hand.png",
    color: Color(0xFFD9FFFC),
  ),
  Feedback(
    id: 3,
    name: "Julia Martins, BH",
    review:
        'Estive na pousada com meu parceiro para uma escapada romântica e não poderíamos ter escolhido lugar melhor. A vista do quarto era espetacular, e a jacuzzi no terraço completou a nossa experiência de relaxamento. ',
    userPic: "assets/images/hand.png",
    color: Color(0xFFFFE0E0),
  ),
];

String review =
    'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore mag aliqua enim ad minim veniam.';
