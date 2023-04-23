import 'package:flutter/material.dart';
import 'package:pcast_app/core/utils/image_constant.dart';
import 'package:pcast_app/core/utils/size_utils.dart';
import 'package:pcast_app/theme/app_style.dart';
import 'package:pcast_app/widgets/custom_icon_button.dart';
import 'package:pcast_app/widgets/custom_image_view.dart';

// ignore: must_be_immutable
class OtherpodcastsItemWidget extends StatelessWidget {
  const OtherpodcastsItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Padding(
        padding: getPadding(
          right: 15,
          bottom: 1,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImage3,
              height: getVerticalSize(
                136,
              ),
              width: getHorizontalSize(
                147,
              ),
              radius: BorderRadius.only(
                topLeft: Radius.circular(
                  getHorizontalSize(
                    16,
                  ),
                ),
                topRight: Radius.circular(
                  getHorizontalSize(
                    16,
                  ),
                ),
                bottomLeft: Radius.circular(
                  getHorizontalSize(
                    16,
                  ),
                ),
              ),
            ),
            Container(
              width: getHorizontalSize(
                119,
              ),
              margin: getMargin(
                top: 15,
              ),
              child: Text(
                "Miam isn’t the best place to live",
                maxLines: null,
                textAlign: TextAlign.left,
                style: AppStyle.txtRobotoMedium14,
              ),
            ),
            Padding(
              padding: getPadding(
                top: 9,
              ),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: getPadding(
                          left: 2,
                        ),
                        child: Row(
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgClock,
                              height: getSize(
                                13,
                              ),
                              width: getSize(
                                13,
                              ),
                              margin: getMargin(
                                bottom: 1,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 9,
                              ),
                              child: Text(
                                "24:15:05",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRobotoRegular12,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          top: 4,
                        ),
                        child: Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.img03w,
                              height: getSize(
                                16,
                              ),
                              width: getSize(
                                16,
                              ),
                              radius: BorderRadius.circular(
                                getHorizontalSize(
                                  8,
                                ),
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 8,
                              ),
                              child: Text(
                                "John Smith",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRobotoRegular12WhiteA700,
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
                      left: 30,
                      top: 2,
                      bottom: 1,
                    ),
                    variant: IconButtonVariant.FillBlueA700,
                    padding: IconButtonPadding.PaddingAll9,
                    child: CustomImageView(
                      svgPath: ImageConstant.imgShapestroke,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
