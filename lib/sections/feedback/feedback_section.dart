import 'package:flutter/material.dart';
import 'package:pousada_diamante/components/section_title.dart';
import 'package:pousada_diamante/constants.dart';
import 'package:pousada_diamante/models/Feedback.dart';

import 'components/feedback_card.dart';

class FeedbackSection extends StatelessWidget {
  final CarouselController controller = CarouselController(initialItem: 0);
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final bool isMobile = constraints.maxWidth < 600;
      return Container(
        padding: EdgeInsets.symmetric(vertical: kDefaultPadding * 2.5),
        constraints: BoxConstraints(maxWidth: 1110),
        child: Column(
          children: [
            SectionTitle(
              title: "Feedback",
              subTitle: "Depoimentos de clientes que me inspiraram muito",
              color: Color(0xFF00B1FF),
            ),
            SizedBox(height: kDefaultPadding),
            isMobile
                ? SizedBox(
                    height: isMobile ? 400 : 450,
                    width: 400,
                    child: CarouselView(
                      controller: controller,
                      itemSnapping: true,
                      scrollDirection: Axis.horizontal,
                      itemExtent: 200,
                      children:
                          List<Widget>.generate(feedbacks.length, (int index) {
                        return FeedbackCard(index: index);
                      }),
                    ))
                : Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: List.generate(
                      feedbacks.length,
                      (index) => FeedbackCard(index: index),
                    ),
                  ),
          ],
        ),
      );
    });
  }
}
