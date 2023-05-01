import 'package:flutter/material.dart';
import 'package:pcast_app/core/utils/image_constant.dart';
import 'package:pcast_app/core/utils/size_utils.dart';
import 'package:pcast_app/presentation/topic_screen/topic_screen.dart';
import 'package:pcast_app/theme/app_style.dart';
import 'package:pcast_app/widgets/custom_image_view.dart';

// ignore: must_be_immutable
class ListbgItemWidget extends StatelessWidget {
  const ListbgItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const TopicScreen();
        }));
      },
      child: SizedBox(
        height: getVerticalSize(
          145,
        ),
        width: getHorizontalSize(
          309,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgBg,
              height: getVerticalSize(
                145,
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
                  right: 36,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      width: getHorizontalSize(
                        197,
                      ),
                      margin: getMargin(
                        right: 43,
                      ),
                      child: Text(
                        "Positive psychology\nand our motivations",
                        maxLines: null,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRobotoMedium22,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        top: 21,
                      ),
                      child: Row(
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgUser,
                            height: getSize(
                              16,
                            ),
                            width: getSize(
                              16,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 8,
                            ),
                            child: Text(
                              "Authors: 124",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRegular14,
                            ),
                          ),
                          CustomImageView(
                            svgPath: ImageConstant.imgMicrophone,
                            height: getVerticalSize(
                              16,
                            ),
                            width: getHorizontalSize(
                              12,
                            ),
                            margin: getMargin(
                              left: 16,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 8,
                            ),
                            child: Text(
                              "Podcasts: 7 286",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRegular14,
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
      ),
    );
  }
}
