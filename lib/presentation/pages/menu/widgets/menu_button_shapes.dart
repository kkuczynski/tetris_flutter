import 'package:flutter/material.dart';
import 'package:tetris/presentation/style.dart';

abstract class ButtonShape extends StatelessWidget {
  final double availableWidth;
  const ButtonShape({Key? key, required this.availableWidth}) : super(key: key);
}

class HorizontalButtonShape extends ButtonShape {
  const HorizontalButtonShape({Key? key, required double availableWidth})
      : super(
          key: key,
          availableWidth: availableWidth,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List<Widget>.generate(
        4,
        (index) => Container(
          width: availableWidth / 4,
          height: availableWidth / 4,
          decoration: BoxDecoration(
            color: cyan,
            border: Border.all(
              color: semiTransparentGrey,
              width: 2.0,
            ),
            borderRadius: BorderRadius.circular(3.0),
          ),
        ),
      ).toList(),
    );
  }
}

class JButtonShape extends ButtonShape {
  const JButtonShape({Key? key, required double availableWidth})
      : super(
          key: key,
          availableWidth: availableWidth,
        );
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Row(
              children: List<Widget>.generate(
                3,
                (index) => Container(
                  width: availableWidth / 4,
                  height: availableWidth / 4,
                  decoration: BoxDecoration(
                    color: pink,
                    border: Border.all(
                      color: semiTransparentGrey,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                ),
              ).toList(),
            ),
            Container(
              width: availableWidth / 4,
              height: availableWidth / 4,
              decoration: BoxDecoration(
                color: pink,
                border: Border.all(
                  color: semiTransparentGrey,
                  width: 2.0,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class AButtonShape extends ButtonShape {
  const AButtonShape({Key? key, required double availableWidth})
      : super(
          key: key,
          availableWidth: availableWidth,
        );
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Container(
              width: availableWidth / 4,
              height: availableWidth / 4,
              decoration: BoxDecoration(
                color: yellow,
                border: Border.all(
                  color: semiTransparentGrey,
                  width: 2.0,
                ),
              ),
            ),
            Row(
              children: List<Widget>.generate(
                3,
                (index) => Container(
                  width: availableWidth / 4,
                  height: availableWidth / 4,
                  decoration: BoxDecoration(
                    color: yellow,
                    border: Border.all(
                      color: semiTransparentGrey,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                ),
              ).toList(),
            ),
          ],
        ),
      ],
    );
  }
}

class OButtonShape extends ButtonShape {
  const OButtonShape({Key? key, required double availableWidth})
      : super(
          key: key,
          availableWidth: availableWidth,
        );
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            Row(
              children: List<Widget>.generate(
                2,
                (index) => Container(
                  width: availableWidth / 4,
                  height: availableWidth / 4,
                  decoration: BoxDecoration(
                    color: purple,
                    border: Border.all(
                      color: semiTransparentGrey,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                ),
              ).toList(),
            ),
            Row(
              children: List<Widget>.generate(
                2,
                (index) => Container(
                  width: availableWidth / 4,
                  height: availableWidth / 4,
                  decoration: BoxDecoration(
                    color: purple,
                    border: Border.all(
                      color: semiTransparentGrey,
                      width: 2.0,
                    ),
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                ),
              ).toList(),
            ),
          ],
        ),
      ],
    );
  }
}
