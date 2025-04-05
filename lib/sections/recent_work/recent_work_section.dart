import 'package:flutter/material.dart';
import 'package:pousada_diamante/components/section_title.dart';
import 'package:pousada_diamante/constants.dart';
import 'package:pousada_diamante/models/RecentWork.dart';

import 'components/recent_work_card.dart';

class RecentWorkSection extends StatelessWidget {
  final CarouselController controller = CarouselController(initialItem: 0);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final bool isMobile = constraints.maxWidth < 600;
      return Container(
        // margin: EdgeInsets.only(top: kDefaultPadding * 6),
        width: double.infinity,
        // just for demo
        // height: 600,
        decoration: BoxDecoration(
          color: Color(0xFFF7E8FF).withOpacity(0.3),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/recent_work_bg.png"),
          ),
        ),
        child: Column(
          children: [
            Transform.translate(
              offset: Offset(0, -80),
              // child: HireMeCard(),
            ),
            SectionTitle(
              title: "Quartos",
              subTitle: "Nossos",
              color: Color(0xFFFFB100),
            ),
            SizedBox(height: kDefaultPadding * 1.5),
            isMobile
                ? Container(
                    height: isMobile ? 200 : 450,
                    width: isMobile ? 350 : 400,
                    child: CarouselView(
                      controller: controller,
                      itemSnapping: true,
                      scrollDirection: Axis.horizontal,
                      itemExtent: 370,
                      shrinkExtent: 0.2,
                      children: List<Widget>.generate(recentWorks.length,
                          (int index) {
                        return Wrap(
                            // spacing: kDefaultPadding,
                            runSpacing: kDefaultPadding * 2,
                            children: List.generate(
                                recentWorks.length,
                                (index) => RecentWorkCard(
                                    index: index,
                                    press: () {
                                      print("clique");
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (BuildContext context) =>
                                                recentWorks[index].link),
                                      );
                                      ;
                                    })));
                      }),
                    ))
                : SizedBox(
                    width: 1110,
                    child: Wrap(
                      spacing: kDefaultPadding,
                      runSpacing: kDefaultPadding * 2,
                      children: List.generate(
                        recentWorks.length,
                        (index) => RecentWorkCard(index: index, press: () {}),
                      ),
                    ),
                  ),
            SizedBox(height: kDefaultPadding * 5),
          ],
        ),
      );
    });
  }
}
