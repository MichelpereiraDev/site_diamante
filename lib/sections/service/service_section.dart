import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:pousada_diamante/components/section_title.dart';
import 'package:pousada_diamante/constants.dart';
import 'package:pousada_diamante/models/Service.dart';

import 'components/service_card.dart';

class ServiceSection extends StatelessWidget {
  final CarouselController controller = CarouselController(initialItem: 1);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final bool isMobile = constraints.maxWidth < 600;
      return Container(
          margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
          constraints: BoxConstraints(maxWidth: 1110),
          child: Column(children: [
            SectionTitle(
              color: Color(0xFFFF0000),
              title: "Serviços",
              subTitle: "Nossos",
            ),
            isMobile
                ? SizedBox(
                    height: 400,
                    width: 400,
                    child: CarouselView(
                      controller: controller,
                      itemSnapping: true,
                      scrollDirection: Axis.horizontal,
                      itemExtent: 200,
                      children:
                          List<Widget>.generate(services.length, (int index) {
                        return ServiceCard(index: index);
                      }),
                    ))
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                        services.length, (index) => ServiceCard(index: index)),
                  )
          ]));
    });
  }
}
