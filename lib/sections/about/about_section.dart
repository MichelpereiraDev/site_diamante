import 'package:flutter/material.dart';
import 'package:pousada_diamante/components/my_outline_button.dart';
import 'package:pousada_diamante/constants.dart';
import 'package:sizer/sizer.dart';

import 'components/about_section_text.dart';
import 'components/about_text_with_sign.dart';
import 'components/experience_card.dart';

class AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final bool isMobile = constraints.maxWidth < 600;

      return isMobile
          ? Container(

              //  margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
              constraints: BoxConstraints(maxWidth: 600),
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AboutTextWithSign(),
                  AboutSectionText(
                      text:
                          "Bem-vindo à Casa Diamante, um refúgio paradisíaco situado a poucos passos das areias douradas e das águas cristalinas da praia. Nossa pousada encantadora combina o luxo discreto com o charme rústico, oferecendo aos nossos hóspedes uma experiência única à beira-mar."),
                  ExperienceCard(numOfExp: "08"),
                  AboutSectionText(
                      text:
                          "Bem-vindo à Casa Diamante, um refúgio paradisíaco situado a poucos passos das areias douradas e das águas cristalinas da praia. Nossa pousada encantadora combina o luxo discreto com o charme rústico, oferecendo aos nossos hóspedes uma experiência única à beira-mar."),
                ],
              ))
          : Container(
              //  margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
              constraints: BoxConstraints(maxWidth: 1100),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AboutTextWithSign(),
                  Expanded(
                    child: AboutSectionText(
                        text:
                            "Bem-vindo à Casa Diamante, um refúgio paradisíaco situado a poucos passos das areias douradas e das águas cristalinas da praia. Nossa pousada encantadora combina o luxo discreto com o charme rústico, oferecendo aos nossos hóspedes uma experiência única à beira-mar."),
                  ),
                  ExperienceCard(numOfExp: "08"),
                  Expanded(
                    child: AboutSectionText(
                        text:
                            "Bem-vindo à Casa Diamante, um refúgio paradisíaco situado a poucos passos das areias douradas e das águas cristalinas da praia. Nossa pousada encantadora combina o luxo discreto com o charme rústico, oferecendo aos nossos hóspedes uma experiência única à beira-mar."),
                  ),
                ],
              ));
    });
  }
}
