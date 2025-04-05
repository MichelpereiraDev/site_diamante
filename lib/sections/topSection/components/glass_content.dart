import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../constants.dart';

class GlassContent extends StatelessWidget {
  const GlassContent({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final bool isMobile = constraints.maxWidth < 600;
      return ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 2),
            constraints:
                BoxConstraints(maxWidth: 1200, maxHeight: size.height * 0.7),
            width: double.infinity,
            color: Colors.white.withOpacity(0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Pousada",
                  style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: Colors.white, fontSize: isMobile ? 30 : 40),
                ),
                Text(
                  "Casa \nDiamante",
                  style: TextStyle(
                    fontSize: isMobile ? 70 : 100,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    height: 1.5,
                  ),
                ),
                Text(
                  "Hospedagem",
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(color: Colors.white),
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
