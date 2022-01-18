import 'package:flutter/material.dart';
import 'package:tetris/presentation/pages/menu/widgets/menu_button_shapes.dart';
import 'package:tetris/presentation/typography.dart';

class MenuButtonWidget extends StatelessWidget {
  final Function() onPressed;
  final String buttonText;
  final int shape;

  ValueNotifier<bool>? visible;
  MenuButtonWidget({
    Key? key,
    required this.onPressed,
    required this.buttonText,
    this.visible,
    required this.shape,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _availableWidth = MediaQuery.of(context).size.width - 120;
    double _availableHeight = _availableWidth / 4;
    if (visible != null) {
      if (!visible!.value) {
        return Container();
      }
    }

    return Padding(
      padding: EdgeInsets.only(
        top: 15.0,
        left: shape == 2
            ? _availableHeight * 2
            : shape == 3
                ? _availableHeight
                : shape == 0
                    ? _availableHeight
                    : 0.0,
      ),
      child: Stack(
        children: [
          if (shape == 0)
            HorizontalButtonShape(
              availableWidth: _availableWidth,
            )
          else if (shape == 1)
            JButtonShape(
              availableWidth: _availableWidth,
            )
          else if (shape == 2)
            AButtonShape(
              availableWidth: _availableWidth,
            )
          else
            OButtonShape(
              availableWidth: _availableWidth,
            ),
          GestureDetector(
            onTap: onPressed,
            child: Container(
              width: shape == 3
                  ? _availableWidth / 2
                  : shape > 0
                      ? _availableHeight * 3
                      : _availableWidth,
              height: shape > 0 ? _availableHeight * 2 : _availableHeight,
              child: Padding(
                padding: EdgeInsets.only(
                  top: shape == 2 ? _availableHeight : 0.0,
                  bottom: shape == 1 ? _availableHeight : 0.0,
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    buttonText,
                    style: AppTypography.menuButtonText,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
