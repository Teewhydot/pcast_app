import 'package:flutter/material.dart';
import 'package:pcast_app/core/utils/color_constant.dart';
import 'package:pcast_app/core/utils/image_constant.dart';
import 'package:pcast_app/core/utils/size_utils.dart';
import 'package:pcast_app/presentation/main_screen/widgets/otherpodcasts_item_widget.dart';
import 'package:pcast_app/routes/app_routes.dart';
import 'package:pcast_app/theme/app_style.dart';
import 'package:pcast_app/widgets/app_bar/appbar_image.dart';
import 'package:pcast_app/widgets/app_bar/custom_app_bar.dart';
import 'package:pcast_app/widgets/custom_button.dart';
import 'package:pcast_app/widgets/custom_icon_button.dart';
import 'package:pcast_app/widgets/custom_image_view.dart';

import '../main_screen/widgets/list27m_item_widget.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray900,
            body: SizedBox(
                height: getVerticalSize(1131),
                width: double.maxFinite,
                child: Stack(children: [
                  Align(
                      alignment: Alignment.center,
                      child: SingleChildScrollView(
                          child: SizedBox(
                              height: getVerticalSize(1131),
                              width: double.maxFinite,
                              child: Stack(
                                  alignment: Alignment.topRight,
                                  children: [
                                    Align(
                                        alignment: Alignment.center,
                                        child: SizedBox(
                                            height: getVerticalSize(1131),
                                            width: double.maxFinite,
                                            child: Stack(
                                                alignment:
                                                    Alignment.bottomCenter,
                                                children: [
                                                  Align(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      child: SizedBox(
                                                          height: size.height,
                                                          width:
                                                              double.maxFinite,
                                                          child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .topRight,
                                                              children: [
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgImage21,
                                                                    height:
                                                                        getVerticalSize(
                                                                            812),
                                                                    width:
                                                                        getHorizontalSize(
                                                                            375),
                                                                    alignment:
                                                                        Alignment
                                                                            .center),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .topLeft,
                                                                    child: Padding(
                                                                        padding: getPadding(top: 53),
                                                                        child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                          CustomAppBar(
                                                                              height: getVerticalSize(42),
                                                                              title: AppbarImage(height: getVerticalSize(42), width: getHorizontalSize(90), imagePath: ImageConstant.imgLogo, margin: getMargin(left: 33)),
                                                                              actions: [
                                                                                AppbarImage(height: getSize(19), width: getSize(19), svgPath: ImageConstant.imgSearch, margin: getMargin(left: 33, top: 12, right: 11), onTap: () => onTapSearch(context)),
                                                                                AppbarImage(height: getVerticalSize(14), width: getHorizontalSize(20), svgPath: ImageConstant.imgMenu, margin: getMargin(left: 49, top: 14, right: 44, bottom: 3))
                                                                              ]),
                                                                          CustomImageView(
                                                                              svgPath: ImageConstant.imgVector,
                                                                              height: getVerticalSize(40),
                                                                              width: getHorizontalSize(43),
                                                                              margin: getMargin(top: 248))
                                                                        ])))
                                                              ]))),
                                                  Align(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      child: Container(
                                                          height:
                                                              getVerticalSize(
                                                                  811),
                                                          width:
                                                              getHorizontalSize(
                                                                  374),
                                                          decoration: BoxDecoration(
                                                              color: ColorConstant
                                                                  .gray900))),
                                                  Align(
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              bottom: 314),
                                                          child: SizedBox(
                                                              width:
                                                                  getHorizontalSize(
                                                                      342),
                                                              child: Divider(
                                                                  height:
                                                                      getVerticalSize(
                                                                          1),
                                                                  thickness:
                                                                      getVerticalSize(
                                                                          1),
                                                                  color: ColorConstant
                                                                      .whiteA70019))))
                                                ]))),
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Padding(
                                            padding: getPadding(top: 143),
                                            child: Row(children: [
                                              SizedBox(
                                                  height: getVerticalSize(192),
                                                  width: getHorizontalSize(309),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.center,
                                                      children: [
                                                        Align(
                                                            alignment: Alignment
                                                                .center,
                                                            child: SizedBox(
                                                                height:
                                                                    getVerticalSize(
                                                                        180),
                                                                width:
                                                                    getHorizontalSize(
                                                                        309),
                                                                child: Stack(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    children: [
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgBg180x309,
                                                                          height: getVerticalSize(
                                                                              180),
                                                                          width: getHorizontalSize(
                                                                              309),
                                                                          radius: BorderRadius.only(
                                                                              topLeft: Radius.circular(getHorizontalSize(24)),
                                                                              topRight: Radius.circular(getHorizontalSize(24)),
                                                                              bottomLeft: Radius.circular(getHorizontalSize(24))),
                                                                          alignment: Alignment.center),
                                                                      Align(
                                                                          alignment:
                                                                              Alignment.center,
                                                                          child: Padding(
                                                                              padding: getPadding(left: 32, right: 24),
                                                                              child: Column(mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                SizedBox(width: getHorizontalSize(204), child: Text("About flow and our motivations", maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtRobotoMedium24)),
                                                                                Padding(
                                                                                    padding: getPadding(top: 16),
                                                                                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                                                                                      Padding(
                                                                                          padding: getPadding(top: 5, bottom: 6),
                                                                                          child: Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                                            SizedBox(
                                                                                                height: getVerticalSize(16),
                                                                                                width: getHorizontalSize(145),
                                                                                                child: Stack(alignment: Alignment.topRight, children: [
                                                                                                  Align(alignment: Alignment.center, child: Text("23.05.2019         24:15:05", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular13)),
                                                                                                  CustomImageView(svgPath: ImageConstant.imgClock, height: getSize(13), width: getSize(13), alignment: Alignment.topRight, margin: getMargin(top: 1, right: 58))
                                                                                                ])),
                                                                                            Padding(
                                                                                                padding: getPadding(top: 6),
                                                                                                child: Row(children: [
                                                                                                  CustomImageView(imagePath: ImageConstant.img03w, height: getSize(16), width: getSize(16), radius: BorderRadius.circular(getHorizontalSize(8))),
                                                                                                  Padding(padding: getPadding(left: 8), child: Text("Harold Mccoy", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular13WhiteA700))
                                                                                                ]))
                                                                                          ])),
                                                                                      CustomIconButton(height: 51, width: 51, variant: IconButtonVariant.FillRedA400, shape: IconButtonShape.RoundedBorder25, child: CustomImageView(svgPath: ImageConstant.imgShape))
                                                                                    ]))
                                                                              ])))
                                                                    ]))),
                                                        CustomButton(
                                                            height:
                                                                getVerticalSize(
                                                                    23),
                                                            width:
                                                                getHorizontalSize(
                                                                    46),
                                                            text: "NEW",
                                                            margin: getMargin(
                                                                left: 32),
                                                            variant:
                                                                ButtonVariant
                                                                    .FillRedA400,
                                                            shape: ButtonShape
                                                                .RoundedBorder11,
                                                            padding:
                                                                ButtonPadding
                                                                    .PaddingAll4,
                                                            fontStyle:
                                                                ButtonFontStyle
                                                                    .RobotoBlack12,
                                                            alignment: Alignment
                                                                .topLeft)
                                                      ])),
                                            ]))),

                                    ///Listen podcasts section start
                                    Align(
                                        alignment: Alignment.bottomRight,
                                        child: Padding(
                                            padding: getPadding(bottom: 363),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text("Listen podcasts",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoMedium24WhiteA700),
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 21, right: 505),
                                                      child: Row(children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                bottom: 1),
                                                            child: Text(
                                                                "Recent",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRobotoRegular16)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 24,
                                                                top: 1),
                                                            child: Text(
                                                                "Topics",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRobotoRegular16Bluegray400)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 24,
                                                                bottom: 1),
                                                            child: Text(
                                                                "Authors",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRobotoRegular16Bluegray400)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 24,
                                                                top: 1),
                                                            child: Text(
                                                                "Episodes",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRobotoRegular16Bluegray400))
                                                      ])),
                                                  SizedBox(
                                                      height:
                                                          getVerticalSize(272),
                                                      child: ListView.separated(
                                                          padding: getPadding(
                                                              top: 38),
                                                          scrollDirection:
                                                              Axis.horizontal,
                                                          separatorBuilder:
                                                              (context, index) {
                                                            return SizedBox(
                                                                height:
                                                                    getVerticalSize(
                                                                        15));
                                                          },
                                                          itemCount: 5,
                                                          itemBuilder:
                                                              (context, index) {
                                                            return const OtherpodcastsItemWidget();
                                                          }))
                                                ]))),

                                    /// Podcast authors section start
                                    Align(
                                        alignment: Alignment.bottomRight,
                                        child: Padding(
                                            padding: getPadding(bottom: 42),
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Text("Podcasts authors",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoMedium24WhiteA700),
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 23, right: 164),
                                                      child: Row(children: [
                                                        Padding(
                                                            padding: getPadding(
                                                                bottom: 1),
                                                            child: Text(
                                                                "Recent",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRobotoRegular16Bluegray400)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 24,
                                                                top: 1),
                                                            child: Text(
                                                                "Most podcasts",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRobotoRegular16Bluegray400)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 24,
                                                                bottom: 1),
                                                            child: Text(
                                                                "Most followed",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRobotoRegular16Bluegray400))
                                                      ])),
                                                  SizedBox(
                                                      height:
                                                          getVerticalSize(152),
                                                      child: ListView.separated(
                                                          padding: getPadding(
                                                              top: 38),
                                                          scrollDirection:
                                                              Axis.horizontal,
                                                          separatorBuilder:
                                                              (context, index) {
                                                            return SizedBox(
                                                                height:
                                                                    getVerticalSize(
                                                                        24));
                                                          },
                                                          itemCount: 4,
                                                          itemBuilder:
                                                              (context, index) {
                                                            return const PodcastAuthorsWidget();
                                                          }))
                                                ])))
                                  ]))))
                ]))));
  }

  onTapSearch(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.searchScreen);
  }
}

class MainScreen1 extends StatelessWidget {
  const MainScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstant.gray900,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(
                      color: ColorConstant.whiteA700,
                      width: 1,
                    ),
                  ),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgImage21,
                      height: getVerticalSize(312),
                      width: getHorizontalSize(375),
                      alignment: Alignment.center),
                ),

                /// Spacing at the left side of this svg rendered it unusable
                // Positioned(
                //   bottom: 0,
                //   child: CustomImageView(
                //     svgPath: ImageConstant.imgVector,
                //     height: getVerticalSize(40),
                //     width: getHorizontalSize(43),
                //     margin: getMargin(left: 0, top: 0, right: 0, bottom: 0),
                //     alignment: Alignment.centerLeft,
                //   ),
                // ),
                Column(
                  children: [
                    SizedBox(
                      height: getVerticalSize(10),
                    ),
                    CustomAppBar(
                        height: getVerticalSize(42),
                        title: AppbarImage(
                            height: getVerticalSize(42),
                            width: getHorizontalSize(90),
                            imagePath: ImageConstant.imgLogo,
                            margin: getMargin(left: 33)),
                        actions: [
                          AppbarImage(
                              height: getSize(19),
                              width: getSize(19),
                              svgPath: ImageConstant.imgSearch,
                              margin: getMargin(left: 33, top: 12, right: 11),
                              onTap: () => onTapSearch(context)),
                          AppbarImage(
                              height: getVerticalSize(14),
                              width: getHorizontalSize(20),
                              svgPath: ImageConstant.imgMenu,
                              margin: getMargin(
                                  left: 49, top: 14, right: 44, bottom: 3))
                        ]),
                    const SizedBox(
                      height: 50,
                    ),
                    Stack(clipBehavior: Clip.none, children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgBg180x309,
                          height: getVerticalSize(180),
                          width: getHorizontalSize(309),
                          radius: BorderRadius.only(
                              topLeft: Radius.circular(getHorizontalSize(24)),
                              topRight: Radius.circular(getHorizontalSize(24)),
                              bottomLeft:
                                  Radius.circular(getHorizontalSize(24))),
                          alignment: Alignment.center),
                      Positioned(
                        left: 50,
                        top: -10,
                        child: CustomButton(
                            height: getVerticalSize(23),
                            width: getHorizontalSize(46),
                            text: "NEW",
                            margin: getMargin(left: 32),
                            variant: ButtonVariant.FillRedA400,
                            shape: ButtonShape.RoundedBorder11,
                            padding: ButtonPadding.PaddingAll4,
                            fontStyle: ButtonFontStyle.RobotoBlack12,
                            alignment: Alignment.topLeft),
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 50, right: 50, top: 30),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                  width: getHorizontalSize(204),
                                  child: Text("About flow and our motivations",
                                      maxLines: null,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtRobotoMedium24)),
                              Padding(
                                  padding: getPadding(top: 16),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Padding(
                                            padding:
                                                getPadding(top: 5, bottom: 6),
                                            child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  SizedBox(
                                                      height:
                                                          getVerticalSize(16),
                                                      width: getHorizontalSize(
                                                          145),
                                                      child: Stack(
                                                          alignment: Alignment
                                                              .topRight,
                                                          children: [
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child: Text(
                                                                    "23.05.2019         24:15:05",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtRobotoRegular13)),
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgClock,
                                                                height:
                                                                    getSize(13),
                                                                width:
                                                                    getSize(13),
                                                                alignment:
                                                                    Alignment
                                                                        .topRight,
                                                                margin:
                                                                    getMargin(
                                                                        top: 1,
                                                                        right:
                                                                            58))
                                                          ])),
                                                  Padding(
                                                      padding:
                                                          getPadding(top: 6),
                                                      child: Row(children: [
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .img03w,
                                                            height: getSize(16),
                                                            width: getSize(16),
                                                            radius: BorderRadius
                                                                .circular(
                                                                    getHorizontalSize(
                                                                        8))),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 8),
                                                            child: Text(
                                                                "Harold Mccoy",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRobotoRegular13WhiteA700))
                                                      ]))
                                                ])),
                                        CustomIconButton(
                                            height: 51,
                                            width: 51,
                                            variant:
                                                IconButtonVariant.FillRedA400,
                                            shape:
                                                IconButtonShape.RoundedBorder25,
                                            child: CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgShape))
                                      ]))
                            ]),
                      )
                    ]),
                  ],
                ),
              ]),

              ///Listen podcasts section start
              Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                      padding: getPadding(bottom: 163, top: 50),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Listen podcasts",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRobotoMedium24WhiteA700),
                            Padding(
                                padding: getPadding(top: 21, right: 50),
                                child: Row(children: [
                                  Padding(
                                      padding: getPadding(bottom: 1),
                                      child: Text("Recent",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtRobotoRegular16)),
                                  Padding(
                                      padding: getPadding(left: 24, top: 1),
                                      child: Text("Topics",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtRobotoRegular16Bluegray400)),
                                  Padding(
                                      padding: getPadding(left: 24, bottom: 1),
                                      child: Text("Authors",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtRobotoRegular16Bluegray400)),
                                  Padding(
                                      padding: getPadding(left: 24, top: 1),
                                      child: Text("Episodes",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtRobotoRegular16Bluegray400))
                                ])),
                            SizedBox(
                                height: getVerticalSize(272),
                                child: ListView.separated(
                                    padding: getPadding(top: 38),
                                    scrollDirection: Axis.horizontal,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                          height: getVerticalSize(15));
                                    },
                                    itemCount: 5,
                                    itemBuilder: (context, index) {
                                      return const OtherpodcastsItemWidget();
                                    }))
                          ]))),

              /// Podcast authors section start
              Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                      padding: getPadding(bottom: 42),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text("Podcasts authors",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRobotoMedium24WhiteA700),
                            Padding(
                                padding: getPadding(
                                  top: 23,
                                ),
                                child: Row(children: [
                                  Padding(
                                      padding: getPadding(bottom: 1),
                                      child: Text("Recent",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtRobotoRegular16Bluegray400)),
                                  Padding(
                                      padding: getPadding(left: 24, top: 1),
                                      child: Text("Most podcasts",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtRobotoRegular16Bluegray400)),
                                  Padding(
                                      padding: getPadding(left: 24, bottom: 1),
                                      child: Text("Most followed",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle
                                              .txtRobotoRegular16Bluegray400))
                                ])),
                            SizedBox(
                                height: getVerticalSize(152),
                                child: ListView.separated(
                                    padding: getPadding(top: 38),
                                    scrollDirection: Axis.horizontal,
                                    separatorBuilder: (context, index) {
                                      return SizedBox(
                                          height: getVerticalSize(64));
                                    },
                                    itemCount: 55,
                                    itemBuilder: (context, index) {
                                      return const PodcastAuthorsWidget();
                                    }))
                          ])))
            ],
          ),
        ),
      ),
    );
  }

  onTapSearch(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.searchScreen);
  }
}
