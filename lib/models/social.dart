import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class whatsapp {
  final String phoneNumber =
      '5522998343076'; // Coloque o número de telefone aqui
  final String message =
      'Olá, gostaria de mais informações!'; // Coloque a mensagem desejada aqui

  // Função para abrir o WhatsApp
  void openWhatsApp(BuildContext context) async {
    String url = 'https://wa.me/$phoneNumber?text=${Uri.encodeFull(message)}';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("WhatsApp não está instalado")),
      );
    }
  }
}
