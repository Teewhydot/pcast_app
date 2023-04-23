import 'package:flutter/material.dart';
import 'package:pcast_app/core/utils/color_constant.dart';
import 'package:pcast_app/core/utils/image_constant.dart';
import 'package:pcast_app/core/utils/size_utils.dart';
import 'package:pcast_app/theme/app_style.dart';
import 'package:pcast_app/widgets/app_bar/appbar_image.dart';
import 'package:pcast_app/widgets/app_bar/custom_app_bar.dart';
import 'package:pcast_app/widgets/custom_image_view.dart';
import 'package:pcast_app/widgets/custom_search_view.dart';

import '../browse_podcasts_screen/widgets/listbg1_item_widget.dart';
import '../browse_podcasts_screen/widgets/tabs3_item_widget.dart';

class BrowsePodcastsScreen extends StatelessWidget {
  TextEditingController searchoneController = TextEditingController();

  BrowsePodcastsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray900,
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          height: getVerticalSize(
            95,
          ),
          title: AppbarImage(
            height: getVerticalSize(
              42,
            ),
            width: getHorizontalSize(
              90,
            ),
            imagePath: ImageConstant.imgLogo,
            margin: getMargin(
              left: 33,
            ),
          ),
          actions: [
            AppbarImage(
              height: getSize(
                19,
              ),
              width: getSize(
                19,
              ),
              svgPath: ImageConstant.imgSearch,
              margin: getMargin(
                left: 33,
                top: 12,
                right: 11,
              ),
            ),
            AppbarImage(
              height: getVerticalSize(
                14,
              ),
              width: getHorizontalSize(
                20,
              ),
              svgPath: ImageConstant.imgMenu,
              margin: getMargin(
                left: 49,
                top: 14,
                right: 44,
                bottom: 3,
              ),
            ),
          ],
        ),
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: getPadding(
                left: 30,
                top: 33,
                bottom: 5,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: getPadding(
                      left: 3,
                    ),
                    child: Text(
                      "Browse",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoBold48,
                    ),
                  ),
                  CustomSearchView(
                    focusNode: FocusNode(),
                    controller: searchoneController,
                    hintText: "Tincidunt |",
                    margin: getMargin(
                      top: 38,
                      right: 33,
                    ),
                    suffix: Container(
                      margin: getMargin(
                        left: 30,
                        top: 14,
                        right: 16,
                        bottom: 14,
                      ),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgSearchBlueGray400,
                      ),
                    ),
                    suffixConstraints: BoxConstraints(
                      maxHeight: getVerticalSize(
                        48,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      height: getVerticalSize(
                        121,
                      ),
                      child: ListView.separated(
                        padding: getPadding(
                          left: 3,
                          top: 32,
                        ),
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: getVerticalSize(
                              21,
                            ),
                          );
                        },
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return const Tabs3ItemWidget();
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 4,
                      top: 52,
                    ),
                    child: Text(
                      "Podcasts (2)",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoMedium16,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 3,
                      top: 23,
                      right: 33,
                    ),
                    child: ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(
                          height: getVerticalSize(
                            20,
                          ),
                        );
                      },
                      itemCount: 2,
                      itemBuilder: (context, index) {
                        return const Listbg1ItemWidget();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
