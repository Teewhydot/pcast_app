import 'package:flutter/material.dart';
import 'package:pcast_app/core/utils/image_constant.dart';
import 'package:pcast_app/core/utils/size_utils.dart';
import 'package:pcast_app/theme/app_style.dart';
import 'package:pcast_app/widgets/custom_icon_button.dart';
import 'package:pcast_app/widgets/custom_image_view.dart';

// ignore: must_be_immutable
class Listbg1ItemWidget extends StatelessWidget {
  const Listbg1ItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getVerticalSize(
        180,
      ),
      width: getHorizontalSize(
        309,
      ),
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgBg5,
            height: getVerticalSize(
              180,
            ),
            width: getHorizontalSize(
              309,
            ),
            radius: BorderRadius.only(
              topLeft: Radius.circular(
                getHorizontalSize(
                  24,
                ),
              ),
              topRight: Radius.circular(
                getHorizontalSize(
                  24,
                ),
              ),
              bottomLeft: Radius.circular(
                getHorizontalSize(
                  24,
                ),
              ),
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: getPadding(
                left: 32,
                right: 24,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: getHorizontalSize(
                      208,
                    ),
                    margin: getMargin(
                      right: 44,
                    ),
                    child: Text(
                      "Tincidunt facilisis fermentum nec sed",
                      maxLines: null,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoMedium24,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 16,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: getPadding(
                            top: 5,
                            bottom: 7,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: getVerticalSize(
                                  16,
                                ),
                                width: getHorizontalSize(
                                  145,
                                ),
                                child: Stack(
                                  alignment: Alignment.topRight,
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: Text(
                                        "23.05.2019         24:15:05",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRobotoRegular13,
                                      ),
                                    ),
                                    CustomImageView(
                                      svgPath: ImageConstant.imgClock,
                                      height: getSize(
                                        13,
                                      ),
                                      width: getSize(
                                        13,
                                      ),
                                      alignment: Alignment.topRight,
                                      margin: getMargin(
                                        top: 1,
                                        right: 58,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: getPadding(
                                  top: 5,
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
                                        "Theresa Hawkins",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRobotoRegular13WhiteA700,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        CustomIconButton(
                          height: 51,
                          width: 51,
                          variant: IconButtonVariant.FillRedA400,
                          shape: IconButtonShape.RoundedBorder25,
                          child: CustomImageView(
                            svgPath: ImageConstant.imgShapeWhiteA700,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
