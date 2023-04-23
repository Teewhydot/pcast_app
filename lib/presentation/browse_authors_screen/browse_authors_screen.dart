// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:pcast_app/core/utils/color_constant.dart';
import 'package:pcast_app/core/utils/image_constant.dart';
import 'package:pcast_app/core/utils/size_utils.dart';
import 'package:pcast_app/theme/app_decoration.dart';
import 'package:pcast_app/theme/app_style.dart';
import 'package:pcast_app/widgets/app_bar/appbar_image.dart';
import 'package:pcast_app/widgets/app_bar/custom_app_bar.dart';
import 'package:pcast_app/widgets/custom_image_view.dart';
import 'package:pcast_app/widgets/custom_search_view.dart';

import '../browse_authors_screen/widgets/tabs2_item_widget.dart';

class BrowseAuthorsScreen extends StatelessWidget {
  TextEditingController searchoneController = TextEditingController();

  BrowseAuthorsScreen({super.key});

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
                    hintText: "Robert |",
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
                          return const Tabs2ItemWidget();
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 3,
                      top: 52,
                    ),
                    child: Text(
                      "Authors (3)",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoMedium16,
                    ),
                  ),
                  Container(
                    height: getVerticalSize(
                      434,
                    ),
                    width: getHorizontalSize(
                      309,
                    ),
                    margin: getMargin(
                      left: 3,
                      top: 23,
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.topCenter,
                          child: SizedBox(
                            height: getVerticalSize(
                              158,
                            ),
                            width: getHorizontalSize(
                              309,
                            ),
                            child: Stack(
                              alignment: Alignment.centerLeft,
                              children: [
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    padding: getPadding(
                                      left: 43,
                                      top: 27,
                                      right: 43,
                                      bottom: 27,
                                    ),
                                    decoration:
                                        AppDecoration.fillBlueA700.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.customBorderTL24,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Robert Dugoni",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtRobotoMedium18,
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 6,
                                            right: 22,
                                          ),
                                          child: Text(
                                            "Podcasts: 7 286",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoRegular13WhiteA700,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    height: getVerticalSize(
                                      158,
                                    ),
                                    width: getHorizontalSize(
                                      117,
                                    ),
                                    margin: getMargin(
                                      left: 9,
                                    ),
                                    child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgAuthorimage,
                                          height: getVerticalSize(
                                            158,
                                          ),
                                          width: getHorizontalSize(
                                            117,
                                          ),
                                          alignment: Alignment.center,
                                        ),
                                        CustomImageView(
                                          imagePath: ImageConstant.imgGlow,
                                          height: getVerticalSize(
                                            99,
                                          ),
                                          width: getHorizontalSize(
                                            114,
                                          ),
                                          alignment: Alignment.bottomCenter,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            height: getVerticalSize(
                              154,
                            ),
                            width: getHorizontalSize(
                              309,
                            ),
                            child: Stack(
                              alignment: Alignment.centerLeft,
                              children: [
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    padding: getPadding(
                                      left: 58,
                                      top: 27,
                                      right: 58,
                                      bottom: 27,
                                    ),
                                    decoration:
                                        AppDecoration.fillRedA400.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.customBorderTL24,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "J.K. Rowling",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtRobotoMedium18,
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 6,
                                            right: 7,
                                          ),
                                          child: Text(
                                            "Podcasts: 7 286",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoRegular13WhiteA700,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    height: getVerticalSize(
                                      154,
                                    ),
                                    width: getHorizontalSize(
                                      120,
                                    ),
                                    margin: getMargin(
                                      left: 16,
                                    ),
                                    child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant
                                              .imgAuthorimage154x120,
                                          height: getVerticalSize(
                                            154,
                                          ),
                                          width: getHorizontalSize(
                                            120,
                                          ),
                                          alignment: Alignment.center,
                                        ),
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgGlow99x117,
                                          height: getVerticalSize(
                                            99,
                                          ),
                                          width: getHorizontalSize(
                                            117,
                                          ),
                                          alignment: Alignment.bottomCenter,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: SizedBox(
                            height: getVerticalSize(
                              153,
                            ),
                            width: getHorizontalSize(
                              309,
                            ),
                            child: Stack(
                              alignment: Alignment.centerLeft,
                              children: [
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Container(
                                    padding: getPadding(
                                      left: 22,
                                      top: 27,
                                      right: 22,
                                      bottom: 27,
                                    ),
                                    decoration:
                                        AppDecoration.fillTealA700.copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.customBorderTL24,
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Mary Beth Keane",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtRobotoMedium18,
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 6,
                                            right: 43,
                                          ),
                                          child: Text(
                                            "Podcasts: 7 286",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoRegular13WhiteA700,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    height: getVerticalSize(
                                      153,
                                    ),
                                    width: getHorizontalSize(
                                      117,
                                    ),
                                    margin: getMargin(
                                      left: 16,
                                    ),
                                    child: Stack(
                                      alignment: Alignment.bottomCenter,
                                      children: [
                                        CustomImageView(
                                          imagePath: ImageConstant
                                              .imgAuthorimage153x117,
                                          height: getVerticalSize(
                                            153,
                                          ),
                                          width: getHorizontalSize(
                                            117,
                                          ),
                                          alignment: Alignment.center,
                                        ),
                                        CustomImageView(
                                          imagePath:
                                              ImageConstant.imgGlow99x115,
                                          height: getVerticalSize(
                                            99,
                                          ),
                                          width: getHorizontalSize(
                                            115,
                                          ),
                                          alignment: Alignment.bottomCenter,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
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
