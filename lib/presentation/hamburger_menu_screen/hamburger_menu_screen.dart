import 'package:flutter/material.dart';
import 'package:pcast_app/core/utils/color_constant.dart';
import 'package:pcast_app/core/utils/image_constant.dart';
import 'package:pcast_app/core/utils/size_utils.dart';
import 'package:pcast_app/routes/app_routes.dart';
import 'package:pcast_app/theme/app_decoration.dart';
import 'package:pcast_app/theme/app_style.dart';
import 'package:pcast_app/widgets/app_bar/appbar_image.dart';
import 'package:pcast_app/widgets/app_bar/custom_app_bar.dart';
import 'package:pcast_app/widgets/custom_image_view.dart';

class HamburgerMenuScreen extends StatelessWidget {
  const HamburgerMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray900,
            body: SizedBox(
                height: size.height,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.center, children: [
                  Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                          padding: getPadding(left: 33, bottom: 353),
                          child: Text("Listen other podcasts",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoMedium24WhiteA700))),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          margin: getMargin(left: 1),
                          decoration: AppDecoration.fillGray900ab,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                    width: getHorizontalSize(345),
                                    margin: getMargin(left: 29),
                                    padding: getPadding(top: 31, bottom: 31),
                                    decoration: AppDecoration.fillBlack900
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .customBorderBL24),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          CustomAppBar(
                                              height: getVerticalSize(84),
                                              title: Container(
                                                  width: getHorizontalSize(102),
                                                  margin: getMargin(left: 70),
                                                  child: Text(
                                                      "Hello,\nSamatha!",
                                                      maxLines: null,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoMedium24)),
                                              actions: [
                                                Container(
                                                    height: getVerticalSize(25),
                                                    width:
                                                        getHorizontalSize(24),
                                                    margin: getMargin(
                                                        left: 33,
                                                        top: 1,
                                                        right: 32),
                                                    child: Stack(
                                                        alignment:
                                                            Alignment.topRight,
                                                        children: [
                                                          AppbarImage(
                                                              height:
                                                                  getSize(20),
                                                              width:
                                                                  getSize(20),
                                                              svgPath: ImageConstant
                                                                  .imgNotification,
                                                              margin: getMargin(
                                                                  top: 5,
                                                                  right: 4)),
                                                          Align(
                                                              alignment:
                                                                  Alignment
                                                                      .topRight,
                                                              child: Container(
                                                                  margin: getMargin(
                                                                      left: 10,
                                                                      bottom:
                                                                          11),
                                                                  padding:
                                                                      getPadding(
                                                                          all:
                                                                              3),
                                                                  decoration: AppDecoration
                                                                      .outlineBlack900
                                                                      .copyWith(
                                                                          borderRadius: BorderRadiusStyle
                                                                              .circleBorder8),
                                                                  child: Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .min,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        Container(
                                                                            height:
                                                                                getSize(8),
                                                                            width: getSize(8),
                                                                            margin: getMargin(all: 3),
                                                                            decoration: BoxDecoration(color: ColorConstant.redA400, borderRadius: BorderRadius.circular(getHorizontalSize(4)), boxShadow: [
                                                                              BoxShadow(color: ColorConstant.red500B2, spreadRadius: getHorizontalSize(2), blurRadius: getHorizontalSize(2), offset: const Offset(0, 0))
                                                                            ]))
                                                                      ])))
                                                        ])),
                                                AppbarImage(
                                                    height: getSize(20),
                                                    width: getSize(20),
                                                    svgPath:
                                                        ImageConstant.imgClose,
                                                    margin: getMargin(
                                                        left: 40,
                                                        top: 6,
                                                        right: 65))
                                              ]),
                                          Align(
                                              alignment: Alignment.centerRight,
                                              child: Padding(
                                                  padding: getPadding(top: 24),
                                                  child: Divider(
                                                      height:
                                                          getVerticalSize(1),
                                                      thickness:
                                                          getVerticalSize(1),
                                                      color: ColorConstant
                                                          .whiteA70019,
                                                      indent:
                                                          getHorizontalSize(40),
                                                      endIndent:
                                                          getHorizontalSize(
                                                              1)))),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Padding(
                                                  padding: getPadding(
                                                      left: 40,
                                                      top: 24,
                                                      right: 32),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .img03w32x32,
                                                            height: getSize(32),
                                                            width: getSize(32),
                                                            radius: BorderRadius
                                                                .circular(
                                                                    getHorizontalSize(
                                                                        16)),
                                                            margin: getMargin(
                                                                top: 1)),
                                                        Container(
                                                            width:
                                                                getHorizontalSize(
                                                                    76),
                                                            margin: getMargin(
                                                                left: 24),
                                                            child: Text(
                                                                "Listened time:\n24:15:05",
                                                                maxLines: null,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRobotoRegular12Bluegray400)),
                                                        Container(
                                                            width:
                                                                getHorizontalSize(
                                                                    48),
                                                            margin: getMargin(
                                                                left: 19),
                                                            child: Text(
                                                                "Playlists:\n27",
                                                                maxLines: null,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRobotoRegular12Bluegray400)),
                                                        Container(
                                                            width:
                                                                getHorizontalSize(
                                                                    55),
                                                            margin: getMargin(
                                                                left: 19),
                                                            child: Text(
                                                                "Following:\n179",
                                                                maxLines: null,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRobotoRegular12Bluegray400))
                                                      ])))
                                        ])),
                                Expanded(
                                    child: Container(
                                        margin: getMargin(
                                            left: 28, top: 16, right: 1),
                                        padding: getPadding(
                                            left: 48,
                                            top: 40,
                                            right: 48,
                                            bottom: 40),
                                        decoration: AppDecoration.fillBlack900
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .customBorderTL241),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: [
                                              GestureDetector(
                                                  onTap: () {
                                                    onTapRowglobe(context);
                                                  },
                                                  child: Padding(
                                                      padding: getPadding(
                                                          left: 1, top: 9),
                                                      child: Row(children: [
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgGlobeBlueGray400,
                                                            height: getSize(16),
                                                            width: getSize(16)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 31),
                                                            child: Text(
                                                                "Browse",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRobotoMedium14WhiteA700))
                                                      ]))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 1, top: 37),
                                                  child: Row(children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgEye,
                                                        height: getSize(16),
                                                        width: getSize(16)),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 31),
                                                        child: Text(
                                                            "Subscribed",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtRobotoMedium14WhiteA700))
                                                  ])),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 1, top: 37),
                                                  child: Row(children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgFavorite,
                                                        height: getSize(16),
                                                        width: getSize(16)),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 31),
                                                        child: Text(
                                                            "Favourites",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtRobotoMedium14WhiteA700))
                                                  ])),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 1, top: 38),
                                                  child: Row(children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgClockBlueGray400,
                                                        height: getSize(16),
                                                        width: getSize(16),
                                                        margin: getMargin(
                                                            bottom: 1)),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 31),
                                                        child: Text("History",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtRobotoMedium14WhiteA700))
                                                  ])),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 1, top: 38),
                                                  child: Row(children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgTicket,
                                                        height: getSize(16),
                                                        width: getSize(16),
                                                        margin: getMargin(
                                                            bottom: 1)),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 31),
                                                        child: Text("Payments",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtRobotoMedium14WhiteA700))
                                                  ])),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 1, top: 38),
                                                  child: Row(children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgCamera,
                                                        height: getSize(16),
                                                        width: getSize(16),
                                                        margin: getMargin(
                                                            bottom: 1)),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 31),
                                                        child: Text(
                                                            "Account settings",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtRobotoMedium14WhiteA700))
                                                  ])),
                                              const Spacer(),
                                              Container(
                                                  padding: getPadding(
                                                      left: 16,
                                                      top: 14,
                                                      right: 16,
                                                      bottom: 14),
                                                  decoration: AppDecoration
                                                      .fillGray90001
                                                      .copyWith(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder25),
                                                  child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment.end,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 2),
                                                            child: Text(
                                                                "Logout",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRobotoMedium16WhiteA700)),
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgArrowright,
                                                            height: getSize(16),
                                                            width: getSize(16),
                                                            margin: getMargin(
                                                                left: 68,
                                                                top: 2,
                                                                bottom: 3))
                                                      ]))
                                            ])))
                              ])))
                ]))));
  }

  onTapRowglobe(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.browseTopicsScreen);
  }
}
