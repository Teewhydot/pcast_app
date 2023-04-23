// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';
import 'package:pcast_app/core/utils/color_constant.dart';
import 'package:pcast_app/core/utils/size_utils.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton(
      {super.key,
      this.shape,
      this.padding,
      this.variant,
      this.alignment,
      this.margin,
      this.width,
      this.height,
      this.child,
      this.onTap});

  IconButtonShape? shape;

  IconButtonPadding? padding;

  IconButtonVariant? variant;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  double? width;

  double? height;

  Widget? child;

  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildIconButtonWidget(),
          )
        : _buildIconButtonWidget();
  }

  _buildIconButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: IconButton(
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
        iconSize: getSize(height ?? 0),
        padding: const EdgeInsets.all(0),
        icon: Container(
          alignment: Alignment.center,
          width: getSize(width ?? 0),
          height: getSize(height ?? 0),
          padding: _setPadding(),
          decoration: _buildDecoration(),
          child: child,
        ),
        onPressed: onTap,
      ),
    );
  }

  _buildDecoration() {
    return BoxDecoration(
      color: _setColor(),
      borderRadius: _setBorderRadius(),
      gradient: _setGradient(),
    );
  }

  _setPadding() {
    switch (padding) {
      case IconButtonPadding.PaddingAll9:
        return getPadding(
          all: 9,
        );
      case IconButtonPadding.PaddingAll6:
        return getPadding(
          all: 6,
        );
      default:
        return getPadding(
          all: 17,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case IconButtonVariant.FillRedA400:
        return ColorConstant.redA400;
      case IconButtonVariant.FillBlueA700:
        return ColorConstant.blueA700;
      case IconButtonVariant.FillLightgreen80026:
        return ColorConstant.lightGreen80026;
      case IconButtonVariant.FillBluegray40026:
        return ColorConstant.blueGray40026;
      case IconButtonVariant.GradientBlue2003fWhiteA7003f:
        return null;
      default:
        return ColorConstant.gray90001;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case IconButtonShape.CircleBorder28:
        return BorderRadius.circular(
          getHorizontalSize(
            28.00,
          ),
        );
      case IconButtonShape.RoundedBorder25:
        return BorderRadius.circular(
          getHorizontalSize(
            25.00,
          ),
        );
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            16.00,
          ),
        );
    }
  }

  _setGradient() {
    switch (variant) {
      case IconButtonVariant.GradientBlue2003fWhiteA7003f:
        return LinearGradient(
          begin: const Alignment(
            0.5,
            0,
          ),
          end: const Alignment(
            0.5,
            1,
          ),
          colors: [
            ColorConstant.blue2003f,
            ColorConstant.whiteA7003f,
          ],
        );
      case IconButtonVariant.FillGray90001:
      case IconButtonVariant.FillRedA400:
      case IconButtonVariant.FillBlueA700:
      case IconButtonVariant.FillLightgreen80026:
      case IconButtonVariant.FillBluegray40026:
        return null;
      default:
        return null;
    }
  }
}

enum IconButtonShape {
  CircleBorder28,
  RoundedBorder25,
  CircleBorder16,
}

enum IconButtonPadding {
  PaddingAll17,
  PaddingAll9,
  PaddingAll6,
}

enum IconButtonVariant {
  FillGray90001,
  GradientBlue2003fWhiteA7003f,
  FillRedA400,
  FillBlueA700,
  FillLightgreen80026,
  FillBluegray40026,
}
