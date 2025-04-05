import 'dart:core';

import 'package:flutter/material.dart';
import 'package:pousada_diamante/sections/about/about_section.dart';
import 'package:pousada_diamante/sections/contact/contact_section.dart';
import 'package:pousada_diamante/sections/feedback/feedback_section.dart';
import 'package:pousada_diamante/sections/recent_work/recent_work_section.dart';
import 'package:pousada_diamante/sections/service/service_section.dart';
import 'package:pousada_diamante/sections/topSection/top_section.dart';

class MenuHome {
  //   AboutSection();
  //    ServiceSection();
  //  RecentWorkSection();
  //  FeedbackSection();

  //  ContactSection();
  /// Earnings
  static List<Widget> Home = [TopSection()];

  /// Ring
  static List<Widget> Sobre = [AboutSection()];

  /// Diamond
  static List<Widget> Servicos = [ServiceSection()];
  static List<Widget> quartos = [RecentWorkSection()];

  static List<Widget> contato = [ContactSection()];
}
