import 'package:flutter/material.dart';
import 'package:pcast_app/core/utils/size_utils.dart';
import 'package:pcast_app/theme/app_style.dart';
import 'package:pcast_app/widgets/custom_icon_button.dart';
import 'package:pcast_app/widgets/custom_image_view.dart';

// ignore: must_be_immutable
class Tabs1ItemWidget extends StatelessWidget {
  final String imageConstant;
  final String title;
  const Tabs1ItemWidget({
    super.key,
    required this.imageConstant,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: getPadding(
            right: 21,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomIconButton(
                height: 56,
                width: 56,
                variant: IconButtonVariant.GradientBlue2003fWhiteA7003f,
                shape: IconButtonShape.CircleBorder28,
                child: CustomImageView(
                  svgPath: imageConstant,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: getPadding(
                    top: 18,
                  ),
                  child: Text(
                    title,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtRobotoMedium12WhiteA700,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
