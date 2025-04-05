import 'package:flutter/material.dart';
import 'package:pousada_diamante/models/RecentWork.dart';
import 'package:pousada_diamante/sections/recent_work/components/imageCard.dart';

import '../../../constants.dart';

class RecentWorkCard extends StatefulWidget {
  // just press "Command + ."
  const RecentWorkCard({
    Key? key,
    required this.index,
    required this.press,
  }) : super(key: key);

  final int index;
  final Function()? press;

  @override
  _RecentWorkCardState createState() => _RecentWorkCardState();
}

class _RecentWorkCardState extends State<RecentWorkCard> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final bool isMobile = constraints.maxWidth < 600;
      return Container(
        width: isMobile ? 320 : 540,
        height: isMobile ? 200 : 320,
        child: InkWell(
          onTap: widget.press,
          onHover: (value) {
            setState(() {
              isHover = value;
            });
          },
          child: AnimatedContainer(
            duration: Duration(milliseconds: 200),
            height: 320,
            width: 540,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [if (isHover) kDefaultCardShadow],
            ),
            child: Row(
              children: [
                Image.asset(recentWorks[widget.index].image),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(recentWorks[widget.index].category.toUpperCase(),
                            style: TextStyle(fontSize: isMobile ? 10 : 14)),
                        SizedBox(height: kDefaultPadding / 2),
                        Text(recentWorks[widget.index].title,
                            style: TextStyle(fontSize: isMobile ? 14 : 20)),
                        SizedBox(height: kDefaultPadding),
                        Center(
                          child: Container(
                              width: isMobile ? 100 : 120,
                              height: isMobile ? 40 : 60,
                              child: ElevatedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (BuildContext context) =>
                                              recentWorks[widget.index].link),
                                    );
                                  },
                                  child: Text(
                                    "Fotos",
                                    style: TextStyle(
                                        decoration: TextDecoration.underline,
                                        fontSize: isMobile ? 12 : 16),
                                  ))),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
