import 'package:flutter/material.dart';
import 'package:pcast_app/core/utils/color_constant.dart';
import 'package:pcast_app/core/utils/image_constant.dart';
import 'package:pcast_app/core/utils/size_utils.dart';
import 'package:pcast_app/theme/app_decoration.dart';
import 'package:pcast_app/theme/app_style.dart';
import 'package:pcast_app/widgets/app_bar/appbar_image.dart';
import 'package:pcast_app/widgets/app_bar/custom_app_bar.dart';
import 'package:pcast_app/widgets/custom_image_view.dart';

import '../../routes/app_routes.dart';
import '../../widgets/custom_icon_button.dart';
import '../podcast_screen/widgets/podcast_item_widget.dart';

class PodcastScreen extends StatelessWidget {
  const PodcastScreen({super.key});

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
                          height: getVerticalSize(374),
                          width: double.maxFinite,
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgBg374x375,
                                height: getVerticalSize(374),
                                width: getHorizontalSize(375),
                                alignment: Alignment.center),
                            CustomAppBar(
                                height: getVerticalSize(83),
                                leadingWidth: 50,
                                leading: AppbarImage(
                                    height: getVerticalSize(17),
                                    width: getHorizontalSize(18),
                                    svgPath: ImageConstant.imgArrowleft,
                                    margin: getMargin(left: 32, bottom: 1),
                                    onTap: () => onTapArrowleft(context)),
                                actions: [
                                  AppbarImage(
                                      height: getSize(19),
                                      width: getSize(19),
                                      svgPath: ImageConstant.imgSearch,
                                      margin: getMargin(left: 34),
                                      onTap: () => onTapSearch1(context)),
                                  AppbarImage(
                                      height: getVerticalSize(14),
                                      width: getHorizontalSize(20),
                                      svgPath: ImageConstant.imgMenu,
                                      margin: getMargin(
                                          left: 49,
                                          top: 2,
                                          right: 34,
                                          bottom: 3))
                                ])
                          ])),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Container(
                                  height: getVerticalSize(955),
                                  width: getHorizontalSize(406),
                                  margin: getMargin(bottom: 35),
                                  child: Stack(
                                      alignment: Alignment.topRight,
                                      children: [
                                        CustomImageView(
                                            imagePath: ImageConstant.imgAuthor2,
                                            height: getVerticalSize(161),
                                            width: getHorizontalSize(122),
                                            alignment: Alignment.topRight,
                                            margin: getMargin(top: 57)),
                                        Align(
                                            alignment: Alignment.topRight,
                                            child: Container(
                                                height: getVerticalSize(157),
                                                width: double.maxFinite,
                                                margin: getMargin(top: 84),
                                                decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                        begin:
                                                            const Alignment(0.5, 0),
                                                        end: const Alignment(0.5, 1),
                                                        colors: [
                                                      ColorConstant.gray90000,
                                                      ColorConstant.gray90001
                                                    ])))),
                                        Align(
                                            alignment: Alignment.bottomRight,
                                            child: Container(
                                                padding: getPadding(
                                                    left: 31,
                                                    top: 13,
                                                    right: 31,
                                                    bottom: 13),
                                                decoration: AppDecoration
                                                    .fillGray900
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .customBorderTL242),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgPasek,
                                                          height:
                                                              getVerticalSize(
                                                                  17),
                                                          width:
                                                              getHorizontalSize(
                                                                  309),
                                                          margin: getMargin(
                                                              left: 1,
                                                              top: 11)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 1, top: 21),
                                                          child: Row(children: [
                                                            CustomIconButton(
                                                                height: 31,
                                                                width: 31,
                                                                variant:
                                                                    IconButtonVariant
                                                                        .FillLightgreen80026,
                                                                padding:
                                                                    IconButtonPadding
                                                                        .PaddingAll9,
                                                                child: CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgThumbsup)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left: 9,
                                                                        top: 9,
                                                                        bottom:
                                                                            6),
                                                                child: Text(
                                                                    "37 501",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtRobotoRegular12WhiteA700)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            51,
                                                                        top: 7,
                                                                        bottom:
                                                                            6),
                                                                child: Text(
                                                                    "24:15:05",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtRobotoMedium14WhiteA700)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            50,
                                                                        top: 9,
                                                                        bottom:
                                                                            6),
                                                                child: Text(
                                                                    "37 501",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtRobotoRegular12)),
                                                            CustomIconButton(
                                                                height: 31,
                                                                width: 31,
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            10),
                                                                variant:
                                                                    IconButtonVariant
                                                                        .FillBluegray40026,
                                                                padding:
                                                                    IconButtonPadding
                                                                        .PaddingAll6,
                                                                child: CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgMegaphone))
                                                          ])),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 20),
                                                          child: Divider(
                                                              height:
                                                                  getVerticalSize(
                                                                      1),
                                                              thickness:
                                                                  getVerticalSize(
                                                                      1),
                                                              color: ColorConstant
                                                                  .blueGray40067,
                                                              indent:
                                                                  getHorizontalSize(
                                                                      1))),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 1, top: 28),
                                                          child: Row(children: [
                                                            CustomIconButton(
                                                                height: 32,
                                                                width: 32,
                                                                padding:
                                                                    IconButtonPadding
                                                                        .PaddingAll9,
                                                                child: CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .img24musicsoundwave)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            11,
                                                                        top: 9,
                                                                        bottom:
                                                                            7),
                                                                child: Text(
                                                                    "Episode 2",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtRobotoRegular12WhiteA700)),
                                                            CustomIconButton(
                                                                height: 32,
                                                                width: 32,
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            24),
                                                                padding:
                                                                    IconButtonPadding
                                                                        .PaddingAll9,
                                                                child: CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgDownload)),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            11,
                                                                        top: 8,
                                                                        bottom:
                                                                            8),
                                                                child: Text(
                                                                    "50mb",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtRobotoRegular12WhiteA700)),
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .img24basicmorevertical,
                                                                height:
                                                                    getVerticalSize(
                                                                        16),
                                                                width:
                                                                    getHorizontalSize(
                                                                        3),
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            113,
                                                                        top: 8,
                                                                        bottom:
                                                                            8))
                                                          ])),
                                                      Container(
                                                          width:
                                                              getHorizontalSize(
                                                                  304),
                                                          margin: getMargin(
                                                              left: 1,
                                                              top: 38,
                                                              right: 5),
                                                          child: Text(
                                                              "The Big Oxmox advised her not to do so, because there were thousands of bad Commas, wild Question Marks and devious Semikoli, but the Little Blind Text didn’t listen. ",
                                                              maxLines: null,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRobotoRegular13Bluegray400)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 1, top: 41),
                                                          child: Text(
                                                              "Episodes (10)",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRobotoMedium16WhiteA700)),
                                                      Padding(
                                                          padding: getPadding(
                                                              left: 1,
                                                              top: 17,
                                                              right: 1),
                                                          child: ListView
                                                              .separated(
                                                                  physics:
                                                                      const NeverScrollableScrollPhysics(),
                                                                  shrinkWrap:
                                                                      true,
                                                                  separatorBuilder:
                                                                      (context,
                                                                          index) {
                                                                    return SizedBox(
                                                                        height:
                                                                            getVerticalSize(8));
                                                                  },
                                                                  itemCount: 5,
                                                                  itemBuilder:
                                                                      (context,
                                                                          index) {
                                                                    return const PodcastItemWidget();
                                                                  }))
                                                    ]))),
                                        Align(
                                            alignment: Alignment.topRight,
                                            child: Padding(
                                                padding: getPadding(right: 84),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      SizedBox(
                                                          width:
                                                              getHorizontalSize(
                                                                  206),
                                                          child: Text(
                                                              "About flow and our motivations",
                                                              maxLines: null,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: AppStyle
                                                                  .txtRobotoMedium24)),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 16),
                                                          child: Text(
                                                              "John Doe & Amanda Smith",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRobotoRegular14)),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 31),
                                                          child: Row(
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .center,
                                                              children: [
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgRefresh,
                                                                    height:
                                                                        getSize(
                                                                            18),
                                                                    width:
                                                                        getSize(
                                                                            18),
                                                                    margin: getMargin(
                                                                        top: 16,
                                                                        bottom:
                                                                            17)),
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgCheckmark,
                                                                    height:
                                                                        getSize(
                                                                            51),
                                                                    width:
                                                                        getSize(
                                                                            51),
                                                                    margin: getMargin(
                                                                        left:
                                                                            32)),
                                                                CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgClockWhiteA700,
                                                                    height:
                                                                        getSize(
                                                                            18),
                                                                    width:
                                                                        getSize(
                                                                            18),
                                                                    margin: getMargin(
                                                                        left:
                                                                            32,
                                                                        top: 16,
                                                                        bottom:
                                                                            17))
                                                              ]))
                                                    ]))),
                                        CustomImageView(
                                            imagePath: ImageConstant.imgAuthor1,
                                            height: getVerticalSize(161),
                                            width: getHorizontalSize(126),
                                            alignment: Alignment.topLeft,
                                            margin: getMargin(top: 57))
                                      ]))))
                    ]))));
  }

  onTapArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  onTapSearch1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.searchScreen);
  }
}
