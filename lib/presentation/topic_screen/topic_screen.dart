import 'package:pcast_app/core/app_export.dart';

import '../topic_screen/widgets/topic_item_widget.dart';

class TopicScreen extends StatelessWidget {
  const TopicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: getVerticalSize(
            1126,
          ),
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgImage1037x375,
                height: getVerticalSize(
                  1037,
                ),
                width: getHorizontalSize(
                  375,
                ),
                alignment: Alignment.topCenter,
              ),
              Align(
                alignment: Alignment.center,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Expanded(
                      child: SingleChildScrollView(
                        child: SizedBox(
                          height: getVerticalSize(
                            1126,
                          ),
                          width: double.maxFinite,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Align(
                                alignment: Alignment.topCenter,
                                child: SizedBox(
                                  height: getVerticalSize(
                                    1037,
                                  ),
                                  width: double.maxFinite,
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgBg1126x375,
                                height: getVerticalSize(
                                  1126,
                                ),
                                width: getHorizontalSize(
                                  375,
                                ),
                                alignment: Alignment.center,
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Container(
                                  margin: getMargin(
                                    left: 33,
                                    right: 33,
                                    bottom: 48,
                                  ),
                                  decoration:
                                      AppDecoration.gradientGray90000Gray900,
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: getHorizontalSize(
                                          249,
                                        ),
                                        margin: getMargin(
                                          right: 60,
                                        ),
                                        child: Text(
                                          "Positive psychology",
                                          maxLines: null,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.txtRobotoBold48WhiteA700,
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 15,
                                          right: 52,
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
                                                style:
                                                    AppStyle.txtRobotoRegular14,
                                              ),
                                            ),
                                            CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgMicrophone,
                                              height: getVerticalSize(
                                                16,
                                              ),
                                              width: getHorizontalSize(
                                                12,
                                              ),
                                              margin: getMargin(
                                                left: 32,
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
                                                style:
                                                    AppStyle.txtRobotoRegular14,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 58,
                                          right: 33,
                                        ),
                                        child: Row(
                                          children: [
                                            CustomButton(
                                              height: getVerticalSize(
                                                51,
                                              ),
                                              width: getHorizontalSize(
                                                155,
                                              ),
                                              text: "Subscribe",
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 24,
                                                top: 17,
                                                bottom: 16,
                                              ),
                                              child: Text(
                                                "+4.7k followers",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoMedium14WhiteA700,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 39,
                                        ),
                                        child: Row(
                                          children: [
                                            Padding(
                                              padding: getPadding(
                                                bottom: 1,
                                              ),
                                              child: Text(
                                                "Recent",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtRobotoRegular16,
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 24,
                                                bottom: 1,
                                              ),
                                              child: Text(
                                                "Authors",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoRegular16Bluegray400,
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 24,
                                                top: 1,
                                              ),
                                              child: Text(
                                                "Popular",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoRegular16Bluegray400,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Container(
                                        height: getVerticalSize(
                                          180,
                                        ),
                                        width: getHorizontalSize(
                                          309,
                                        ),
                                        margin: getMargin(
                                          top: 30,
                                        ),
                                        child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            Align(
                                              alignment: Alignment.center,
                                              child: SizedBox(
                                                height: getVerticalSize(
                                                  175,
                                                ),
                                                width: getHorizontalSize(
                                                  309,
                                                ),
                                                child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgBg175x309,
                                                      height: getVerticalSize(
                                                        175,
                                                      ),
                                                      width: getHorizontalSize(
                                                        309,
                                                      ),
                                                      radius: BorderRadius.only(
                                                        topLeft:
                                                            Radius.circular(
                                                          getHorizontalSize(
                                                            24,
                                                          ),
                                                        ),
                                                        topRight:
                                                            Radius.circular(
                                                          getHorizontalSize(
                                                            24,
                                                          ),
                                                        ),
                                                        bottomLeft:
                                                            Radius.circular(
                                                          getHorizontalSize(
                                                            24,
                                                          ),
                                                        ),
                                                      ),
                                                      alignment:
                                                          Alignment.center,
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Padding(
                                                        padding: getPadding(
                                                          left: 32,
                                                          right: 24,
                                                        ),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Container(
                                                              width:
                                                                  getHorizontalSize(
                                                                208,
                                                              ),
                                                              margin: getMargin(
                                                                right: 44,
                                                              ),
                                                              child: Text(
                                                                "Tincidunt facilisis fermentum nec sed",
                                                                maxLines: null,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRobotoMedium24,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  getPadding(
                                                                top: 16,
                                                              ),
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                children: [
                                                                  Container(
                                                                    height:
                                                                        getVerticalSize(
                                                                      38,
                                                                    ),
                                                                    width:
                                                                        getHorizontalSize(
                                                                      155,
                                                                    ),
                                                                    margin:
                                                                        getMargin(
                                                                      top: 6,
                                                                      bottom: 6,
                                                                    ),
                                                                    child:
                                                                        Stack(
                                                                      alignment:
                                                                          Alignment
                                                                              .topCenter,
                                                                      children: [
                                                                        Align(
                                                                          alignment:
                                                                              Alignment.center,
                                                                          child:
                                                                              SizedBox(
                                                                            width:
                                                                                getHorizontalSize(
                                                                              155,
                                                                            ),
                                                                            child:
                                                                                RichText(
                                                                              text: TextSpan(
                                                                                children: [
                                                                                  TextSpan(
                                                                                    text: "23.05.2019         24:15:05\n",
                                                                                    style: TextStyle(
                                                                                      color: ColorConstant.blueGray400,
                                                                                      fontSize: getFontSize(
                                                                                        13,
                                                                                      ),
                                                                                      fontFamily: 'Roboto',
                                                                                      fontWeight: FontWeight.w400,
                                                                                    ),
                                                                                  ),
                                                                                  TextSpan(
                                                                                    text: "John Doe & Amanda Smith",
                                                                                    style: TextStyle(
                                                                                      color: ColorConstant.whiteA700,
                                                                                      fontSize: getFontSize(
                                                                                        13,
                                                                                      ),
                                                                                      fontFamily: 'Roboto',
                                                                                      fontWeight: FontWeight.w400,
                                                                                    ),
                                                                                  ),
                                                                                ],
                                                                              ),
                                                                              textAlign: TextAlign.left,
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        CustomImageView(
                                                                          svgPath:
                                                                              ImageConstant.imgClock,
                                                                          height:
                                                                              getSize(
                                                                            13,
                                                                          ),
                                                                          width:
                                                                              getSize(
                                                                            13,
                                                                          ),
                                                                          alignment:
                                                                              Alignment.topCenter,
                                                                          margin:
                                                                              getMargin(
                                                                            top:
                                                                                1,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                  CustomIconButton(
                                                                    height: 51,
                                                                    width: 51,
                                                                    variant:
                                                                        IconButtonVariant
                                                                            .FillRedA400,
                                                                    shape: IconButtonShape
                                                                        .RoundedBorder25,
                                                                    child:
                                                                        CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgShape,
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
                                            ),
                                            Align(
                                              alignment: Alignment.center,
                                              child: SizedBox(
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
                                                      imagePath:
                                                          ImageConstant.imgBg5,
                                                      height: getVerticalSize(
                                                        180,
                                                      ),
                                                      width: getHorizontalSize(
                                                        309,
                                                      ),
                                                      radius: BorderRadius.only(
                                                        topLeft:
                                                            Radius.circular(
                                                          getHorizontalSize(
                                                            24,
                                                          ),
                                                        ),
                                                        topRight:
                                                            Radius.circular(
                                                          getHorizontalSize(
                                                            24,
                                                          ),
                                                        ),
                                                        bottomLeft:
                                                            Radius.circular(
                                                          getHorizontalSize(
                                                            24,
                                                          ),
                                                        ),
                                                      ),
                                                      alignment:
                                                          Alignment.center,
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Padding(
                                                        padding: getPadding(
                                                          left: 32,
                                                          right: 24,
                                                        ),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Container(
                                                              width:
                                                                  getHorizontalSize(
                                                                208,
                                                              ),
                                                              margin: getMargin(
                                                                right: 44,
                                                              ),
                                                              child: Text(
                                                                "Tincidunt facilisis fermentum nec sed",
                                                                maxLines: null,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRobotoMedium24,
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  getPadding(
                                                                top: 16,
                                                              ),
                                                              child: Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .spaceBetween,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Padding(
                                                                    padding:
                                                                        getPadding(
                                                                      top: 5,
                                                                      bottom: 7,
                                                                    ),
                                                                    child:
                                                                        Column(
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .start,
                                                                      children: [
                                                                        SizedBox(
                                                                          height:
                                                                              getVerticalSize(
                                                                            16,
                                                                          ),
                                                                          width:
                                                                              getHorizontalSize(
                                                                            145,
                                                                          ),
                                                                          child:
                                                                              Stack(
                                                                            alignment:
                                                                                Alignment.topRight,
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
                                                                          padding:
                                                                              getPadding(
                                                                            top:
                                                                                5,
                                                                          ),
                                                                          child:
                                                                              Row(
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
                                                                                  style: AppStyle.txtRobotoRegular13WhiteA700,
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
                                                                    variant:
                                                                        IconButtonVariant
                                                                            .FillRedA400,
                                                                    shape: IconButtonShape
                                                                        .RoundedBorder25,
                                                                    child:
                                                                        CustomImageView(
                                                                      svgPath:
                                                                          ImageConstant
                                                                              .imgShapeWhiteA700,
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
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          top: 24,
                                        ),
                                        child: ListView.separated(
                                          physics:
                                              const NeverScrollableScrollPhysics(),
                                          shrinkWrap: true,
                                          separatorBuilder: (context, index) {
                                            return SizedBox(
                                              height: getVerticalSize(
                                                29,
                                              ),
                                            );
                                          },
                                          itemCount: 2,
                                          itemBuilder: (context, index) {
                                            return const TopicItemWidget();
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    CustomAppBar(
                      height: getVerticalSize(
                        1073,
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
