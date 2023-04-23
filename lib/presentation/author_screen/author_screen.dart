import 'package:flutter/material.dart';
import 'package:pcast_app/core/utils/color_constant.dart';
import 'package:pcast_app/core/utils/image_constant.dart';
import 'package:pcast_app/core/utils/size_utils.dart';
import 'package:pcast_app/theme/app_decoration.dart';
import 'package:pcast_app/theme/app_style.dart';
import 'package:pcast_app/widgets/app_bar/appbar_image.dart';
import 'package:pcast_app/widgets/app_bar/custom_app_bar.dart';
import 'package:pcast_app/widgets/custom_button.dart';
import 'package:pcast_app/widgets/custom_image_view.dart';
import 'package:url_launcher/url_launcher.dart';

import '../author_screen/widgets/author_item_widget.dart';

class AuthorScreen extends StatelessWidget {
  const AuthorScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray900,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: getVerticalSize(366),
                          width: double.maxFinite,
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                    width: double.maxFinite,
                                    margin: getMargin(top: 66),
                                    padding: getPadding(
                                        left: 33,
                                        top: 25,
                                        right: 33,
                                        bottom: 25),
                                    decoration: AppDecoration.fillGray90001
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .customBorderBL24),
                                    child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          CustomImageView(
                                              svgPath: ImageConstant.imgStar,
                                              height: getSize(10),
                                              width: getSize(10),
                                              margin: getMargin(
                                                  top: 235, bottom: 3)),
                                          CustomImageView(
                                              svgPath: ImageConstant.imgStar,
                                              height: getSize(10),
                                              width: getSize(10),
                                              margin: getMargin(
                                                  left: 6,
                                                  top: 235,
                                                  bottom: 3)),
                                          CustomImageView(
                                              svgPath: ImageConstant.imgStar,
                                              height: getSize(10),
                                              width: getSize(10),
                                              margin: getMargin(
                                                  left: 6,
                                                  top: 235,
                                                  bottom: 3)),
                                          CustomImageView(
                                              svgPath: ImageConstant.imgSend,
                                              height: getSize(10),
                                              width: getSize(10),
                                              margin: getMargin(
                                                  left: 6,
                                                  top: 235,
                                                  bottom: 3)),
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgStarGray300,
                                              height: getSize(10),
                                              width: getSize(10),
                                              margin: getMargin(
                                                  left: 6,
                                                  top: 235,
                                                  bottom: 3)),
                                          Padding(
                                              padding:
                                                  getPadding(left: 8, top: 231),
                                              child: Text("3,5",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRegular14
                                                      .copyWith(
                                                          decoration:
                                                              TextDecoration
                                                                  .underline)))
                                        ]))),
                            Align(
                                alignment: Alignment.topCenter,
                                child: Container(
                                    padding: getPadding(top: 26, bottom: 26),
                                    decoration: AppDecoration.fillTealA700
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
                                              height: getVerticalSize(57),
                                              leadingWidth: 51,
                                              leading: AppbarImage(
                                                  height: getVerticalSize(17),
                                                  width: getHorizontalSize(18),
                                                  svgPath: ImageConstant
                                                      .imgArrowleft,
                                                  margin: getMargin(
                                                      left: 33, bottom: 1),
                                                  onTap: () =>
                                                      onTapArrowLeft1(context)),
                                              actions: [
                                                AppbarImage(
                                                    height: getSize(19),
                                                    width: getSize(19),
                                                    svgPath:
                                                        ImageConstant.imgSearch,
                                                    margin:
                                                        getMargin(left: 33)),
                                                AppbarImage(
                                                    height: getVerticalSize(14),
                                                    width:
                                                        getHorizontalSize(20),
                                                    svgPath:
                                                        ImageConstant.imgMenu,
                                                    margin: getMargin(
                                                        left: 49,
                                                        top: 2,
                                                        right: 33,
                                                        bottom: 3))
                                              ]),
                                          Padding(
                                              padding: getPadding(
                                                  left: 35, top: 123),
                                              child: Row(children: [
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgFacebook,
                                                    height: getSize(20),
                                                    width: getSize(20),
                                                    onTap: () {
                                                      onTapImgFacebook(context);
                                                    }),
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgCameraWhiteA700,
                                                    height: getSize(20),
                                                    width: getSize(20),
                                                    margin:
                                                        getMargin(left: 28)),
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgTwitter,
                                                    height: getVerticalSize(19),
                                                    width:
                                                        getHorizontalSize(20),
                                                    margin: getMargin(
                                                        left: 28, bottom: 1),
                                                    onTap: () {
                                                      onTapImgTwitter(context);
                                                    })
                                              ])),
                                          Padding(
                                              padding:
                                                  getPadding(left: 33, top: 25),
                                              child: Row(children: [
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgMicrophoneWhiteA700,
                                                    height: getVerticalSize(16),
                                                    width:
                                                        getHorizontalSize(12),
                                                    margin:
                                                        getMargin(bottom: 1)),
                                                Padding(
                                                    padding:
                                                        getPadding(left: 8),
                                                    child: Text(
                                                        "Podcasts: 7 286",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtRobotoRegular14WhiteA700))
                                              ]))
                                        ]))),
                            Align(
                                alignment: Alignment.topRight,
                                child: Padding(
                                    padding: getPadding(top: 130),
                                    child: Text("Mary Beth Keane ",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtRobotoBold48)))
                          ])),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Padding(
                                  padding: getPadding(
                                      left: 33, top: 32, right: 33, bottom: 48),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                            height: getVerticalSize(83),
                                            width: getHorizontalSize(306),
                                            child: Stack(
                                                alignment:
                                                    Alignment.bottomRight,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.centerLeft,
                                                      child: SizedBox(
                                                          width:
                                                              getHorizontalSize(
                                                                  296),
                                                          child: Text(
                                                              "Mary Beth Keane is an American writer of Irish parentage. She is the author of The Walking People, Fever,and Ask Again, Yes. In 2011 she was named one of the National...",
                                                              maxLines: null,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRobotoRegular13Bluegray400))),
                                                  Align(
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      child: Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            Text("Read more",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRobotoMedium13),
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgArrowdown,
                                                                height:
                                                                    getVerticalSize(
                                                                        6),
                                                                width:
                                                                    getHorizontalSize(
                                                                        10),
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            13,
                                                                        top: 5,
                                                                        bottom:
                                                                            4))
                                                          ]))
                                                ])),
                                        Padding(
                                            padding:
                                                getPadding(top: 38, right: 57),
                                            child: Row(children: [
                                              CustomButton(
                                                  height: getVerticalSize(51),
                                                  width: getHorizontalSize(131),
                                                  text: "Follow"),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 24,
                                                      top: 17,
                                                      bottom: 16),
                                                  child: Text("+1.3k followers",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoMedium14WhiteA700))
                                            ])),
                                        Padding(
                                            padding: getPadding(top: 41),
                                            child: Row(children: [
                                              Padding(
                                                  padding:
                                                      getPadding(bottom: 1),
                                                  child: Text("Recent",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRegular16)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 24, top: 1),
                                                  child: Text("Popular",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRegular16Bluegray400)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 24, top: 1),
                                                  child: Text("As guest",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRegular16Bluegray400))
                                            ])),
                                        Padding(
                                            padding: getPadding(top: 22),
                                            child: ListView.separated(
                                                physics:
                                                    const NeverScrollableScrollPhysics(),
                                                shrinkWrap: true,
                                                separatorBuilder:
                                                    (context, index) {
                                                  return SizedBox(
                                                      height:
                                                          getVerticalSize(16));
                                                },
                                                itemCount: 3,
                                                itemBuilder: (context, index) {
                                                  return const AuthorItemWidget();
                                                }))
                                      ]))))
                    ]))));
  }

  onTapArrowLeft1(BuildContext context) {
    Navigator.pop(context);
  }

  onTapImgFacebook(BuildContext context) async {
    var url = 'https://www.facebook.com/login/';
    if (!await launch(url)) {
      throw 'Could not launch https://www.facebook.com/login/';
    }
  }

  onTapImgTwitter(BuildContext context) async {
    var url = 'https://twitter.com/login/';
    if (!await launch(url)) {
      throw 'Could not launch https://twitter.com/login/';
    }
  }
}
