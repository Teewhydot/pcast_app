import 'package:flutter/material.dart';
import 'package:pcast_app/core/utils/image_constant.dart';
import 'package:pcast_app/core/utils/size_utils.dart';
import 'package:pcast_app/theme/app_decoration.dart';
import 'package:pcast_app/theme/app_style.dart';
import 'package:pcast_app/widgets/custom_icon_button.dart';
import 'package:pcast_app/widgets/custom_image_view.dart';

// ignore: must_be_immutable
class ListshapestrokeItemWidget extends StatelessWidget {
  const ListshapestrokeItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Container(
        padding: getPadding(
          left: 16,
          top: 13,
          right: 16,
          bottom: 13,
        ),
        decoration: AppDecoration.fillBlack90001.copyWith(
          borderRadius: BorderRadiusStyle.customBorderTL8,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomIconButton(
                  height: 32,
                  width: 32,
                  margin: getMargin(
                    top: 2,
                    bottom: 2,
                  ),
                  variant: IconButtonVariant.FillBlueA700,
                  padding: IconButtonPadding.PaddingAll9,
                  child: CustomImageView(
                    svgPath: ImageConstant.imgShapestroke,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 2,
                          ),
                          child: Text(
                            "Episode 1",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoMedium14WhiteA700,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 76,
                            bottom: 3,
                          ),
                          child: Text(
                            "10:15:00",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtExoRegular12,
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: getPadding(
                        top: 2,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "About flow and moti...",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoRegular12,
                          ),
                          Padding(
                            padding: getPadding(
                              left: 33,
                            ),
                            child: Text(
                              "10mb",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRegular12,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                CustomIconButton(
                  height: 32,
                  width: 32,
                  margin: getMargin(
                    top: 2,
                    bottom: 2,
                  ),
                  padding: IconButtonPadding.PaddingAll9,
                  child: CustomImageView(
                    svgPath: ImageConstant.imgDownload,
                  ),
                ),
              ],
            ),
            Container(
              width: getHorizontalSize(
                214,
              ),
              margin: getMargin(
                left: 48,
                top: 12,
                right: 14,
                bottom: 2,
              ),
              child: Text(
                "The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks...",
                maxLines: null,
                textAlign: TextAlign.left,
                style: AppStyle.txtRobotoRegular12Bluegray4001,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
