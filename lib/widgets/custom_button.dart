// // ignore_for_file: constant_identifier_names, must_be_immutable
//
// import 'package:flutter/material.dart';
// import 'package:pcast_app/core/utils/color_constant.dart';
// import 'package:pcast_app/core/utils/size_utils.dart';
//
// class CustomButton extends StatelessWidget {
//   CustomButton(
//       {super.key,
//       this.shape,
//       this.padding,
//       this.variant,
//       this.fontStyle,
//       this.alignment,
//       this.margin,
//       this.onTap,
//       this.width,
//       this.height,
//       this.text,
//       this.prefixWidget,
//       this.suffixWidget});
//
//   ButtonShape? shape;
//
//   ButtonPadding? padding;
//
//   ButtonVariant? variant;
//
//   ButtonFontStyle? fontStyle;
//
//   Alignment? alignment;
//
//   EdgeInsetsGeometry? margin;
//
//   VoidCallback? onTap;
//
//   double? width;
//
//   double? height;
//
//   String? text;
//
//   Widget? prefixWidget;
//
//   Widget? suffixWidget;
//
//   @override
//   Widget build(BuildContext context) {
//     return alignment != null
//         ? Align(
//             alignment: alignment!,
//             child: _buildButtonWidget(),
//           )
//         : _buildButtonWidget();
//   }
//
//   _buildButtonWidget() {
//     return Padding(
//       padding: margin ?? EdgeInsets.zero,
//       child: TextButton(
//         onPressed: onTap,
//         style: _buildTextButtonStyle(),
//         child: _buildButtonWithOrWithoutIcon(),
//       ),
//     );
//   }
//
//   _buildButtonWithOrWithoutIcon() {
//     if (prefixWidget != null || suffixWidget != null) {
//       return Row(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           prefixWidget ?? const SizedBox(),
//           Text(
//             text ?? "",
//             textAlign: TextAlign.center,
//             style: _setFontStyle(),
//           ),
//           suffixWidget ?? const SizedBox(),
//         ],
//       );
//     } else {
//       return Text(
//         text ?? "",
//         textAlign: TextAlign.center,
//         style: _setFontStyle(),
//       );
//     }
//   }
//
//   _buildTextButtonStyle() {
//     return TextButton.styleFrom(
//       fixedSize: Size(
//         width ?? double.maxFinite,
//         height ?? getVerticalSize(40),
//       ),
//       padding: _setPadding(),
//       backgroundColor: _setColor(),
//       shadowColor: _setTextButtonShadowColor(),
//       shape: RoundedRectangleBorder(
//         borderRadius: _setBorderRadius(),
//       ),
//     );
//   }
//
//   _setPadding() {
//     switch (padding) {
//       case ButtonPadding.PaddingAll4:
//         return getPadding(
//           all: 4,
//         );
//       default:
//         return getPadding(
//           all: 16,
//         );
//     }
//   }
//
//   _setColor() {
//     switch (variant) {
//       case ButtonVariant.OutlineIndigo700b2:
//         return ColorConstant.indigo700;
//       case ButtonVariant.OutlineRedA400b2:
//         return ColorConstant.redA400;
//       case ButtonVariant.FillRedA400:
//         return ColorConstant.redA400;
//       default:
//         return ColorConstant.blueA700;
//     }
//   }
//
//   _setTextButtonShadowColor() {
//     switch (variant) {
//       case ButtonVariant.OutlineIndigo700b2:
//         return ColorConstant.indigo700B2;
//       case ButtonVariant.OutlineRedA400b2:
//         return ColorConstant.redA400B2;
//       case ButtonVariant.FillRedA400:
//         return null;
//       default:
//         return ColorConstant.blueA700B2;
//     }
//   }
//
//   _setBorderRadius() {
//     switch (shape) {
//       case ButtonShape.RoundedBorder11:
//         return BorderRadius.circular(
//           getHorizontalSize(
//             11.00,
//           ),
//         );
//       case ButtonShape.Square:
//         return BorderRadius.circular(0);
//       default:
//         return BorderRadius.circular(
//           getHorizontalSize(
//             25.00,
//           ),
//         );
//     }
//   }
//
//   _setFontStyle() {
//     switch (fontStyle) {
//       case ButtonFontStyle.RobotoBlack12:
//         return TextStyle(
//           color: ColorConstant.whiteA700,
//           fontSize: getFontSize(
//             12,
//           ),
//           fontFamily: 'Roboto',
//           fontWeight: FontWeight.w900,
//           height: getVerticalSize(
//             1.25,
//           ),
//         );
//       default:
//         return TextStyle(
//           color: ColorConstant.whiteA700,
//           fontSize: getFontSize(
//             16,
//           ),
//           fontFamily: 'Roboto',
//           fontWeight: FontWeight.w500,
//           height: getVerticalSize(
//             1.19,
//           ),
//         );
//     }
//   }
// }
//
// enum ButtonShape {
//   Square,
//   RoundedBorder25,
//   RoundedBorder11,
// }
//
// enum ButtonPadding {
//   PaddingAll16,
//   PaddingAll4,
// }
//
// enum ButtonVariant {
//   OutlineBlueA700b2,
//   OutlineIndigo700b2,
//   OutlineRedA400b2,
//   FillRedA400,
// }
//
// enum ButtonFontStyle {
//   RobotoMedium16,
//   RobotoBlack12,
// }
// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:pcast_app/core/utils/color_constant.dart';
import 'package:pcast_app/core/utils/size_utils.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    Key? key,
    this.shape,
    this.padding,
    this.variant,
    this.fontStyle,
    this.alignment,
    this.margin,
    this.onTap,
    this.width,
    this.height,
    this.text,
    this.prefixWidget,
    this.suffixWidget,
  }) : super(key: key);

  final ButtonShape? shape;
  final ButtonPadding? padding;
  final ButtonVariant? variant;
  final ButtonFontStyle? fontStyle;
  final Alignment? alignment;
  final EdgeInsetsGeometry? margin;
  final VoidCallback? onTap;
  final double? width;
  final double? height;
  final String? text;
  final Widget? prefixWidget;
  final Widget? suffixWidget;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  Widget _buildButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: Container(
        width: width ?? double.maxFinite,
        height: height ?? getVerticalSize(40),
        decoration: BoxDecoration(
          borderRadius: _setBorderRadius(),
          boxShadow: [
            BoxShadow(
              color: _setColor().withOpacity(0.5),
              blurRadius: 15,
              spreadRadius: 10,
            ),
          ],
        ),
        child: TextButton(
          onPressed: onTap,
          style: _buildTextButtonStyle(),
          child: _buildButtonWithOrWithoutIcon(),
        ),
      ),
    );
  }

  Widget _buildButtonWithOrWithoutIcon() {
    if (prefixWidget != null || suffixWidget != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          prefixWidget ?? const SizedBox(),
          Text(
            text ?? "",
            textAlign: TextAlign.center,
            style: _setFontStyle(),
          ),
          suffixWidget ?? const SizedBox(),
        ],
      );
    } else {
      return Text(
        text ?? "",
        textAlign: TextAlign.center,
        style: _setFontStyle(),
      );
    }
  }

  ButtonStyle _buildTextButtonStyle() {
    return TextButton.styleFrom(
      backgroundColor: _setColor(),
      primary: ColorConstant.whiteA700,
      padding: _setPadding(),
      shape: RoundedRectangleBorder(
        borderRadius: _setBorderRadius(),
      ),
    );
  }

  EdgeInsetsGeometry _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll4:
        return getPadding(
          all: 4,
        );
      default:
        return getPadding(
          all: 16,
        );
    }
  }

  Color _setColor() {
    switch (variant) {
      case ButtonVariant.OutlineIndigo700b2:
        return ColorConstant.indigo700;
      case ButtonVariant.OutlineRedA400b2:
        return ColorConstant.redA400;
      case ButtonVariant.FillRedA400:
        return ColorConstant.redA400;
      default:
        return ColorConstant.blueA700;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.RoundedBorder11:
        return BorderRadius.circular(
          getHorizontalSize(
            11.00,
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            25.00,
          ),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.RobotoBlack12:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            12,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w900,
          height: getVerticalSize(
            1.25,
          ),
        );
      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
          height: getVerticalSize(
            1.19,
          ),
        );
    }
  }
}

enum ButtonShape {
  Square,
  RoundedBorder25,
  RoundedBorder11,
}

enum ButtonPadding {
  PaddingAll16,
  PaddingAll4,
}

enum ButtonVariant {
  OutlineBlueA700b2,
  OutlineIndigo700b2,
  OutlineRedA400b2,
  FillRedA400,
}

enum ButtonFontStyle {
  RobotoMedium16,
  RobotoBlack12,
}
