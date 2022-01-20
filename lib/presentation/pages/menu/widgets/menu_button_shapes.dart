import 'package:flutter/material.dart';
import 'package:tetris/presentation/pages/menu/widgets/menu_tetro_box_widget.dart';
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
          (index) => MenuTetroBox(
                availableWidth: availableWidth,
                color: cyan,
              )).toList(),
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
                  (index) => MenuTetroBox(
                        availableWidth: availableWidth,
                        color: purple,
                      )).toList(),
            ),
            MenuTetroBox(
              availableWidth: availableWidth,
              color: purple,
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
            MenuTetroBox(
              availableWidth: availableWidth,
              color: yellow,
            ),
            Row(
              children: List<Widget>.generate(
                3,
                (index) => MenuTetroBox(
                  availableWidth: availableWidth,
                  color: yellow,
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
                (index) => MenuTetroBox(
                  availableWidth: availableWidth,
                  color: green,
                ),
              ).toList(),
            ),
            Row(
              children: [
                SizedBox(
                  width: availableWidth / 4,
                  height: availableWidth / 4,
                ),
                Row(
                  children: List<Widget>.generate(
                    2,
                    (index) => MenuTetroBox(
                      availableWidth: availableWidth,
                      color: green,
                    ),
                  ).toList(),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
