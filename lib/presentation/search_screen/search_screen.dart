// ignore_for_file: must_be_immutable

import 'package:pcast_app/core/app_export.dart';
import 'package:pcast_app/widgets/custom_search_view.dart';

import '../search_screen/widgets/listnightstreet_item_widget.dart';
import '../search_screen/widgets/recentpodcasts_item_widget.dart';

class SearchScreen extends StatelessWidget {
  TextEditingController searchtwoController = TextEditingController();

  SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray900,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        padding: getPadding(
                          top: 8,
                          bottom: 8,
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              ImageConstant.imgImage21,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            CustomAppBar(
                              height: getVerticalSize(
                                82,
                              ),
                              leadingWidth: 61,
                              leading: AppbarImage(
                                height: getSize(
                                  31,
                                ),
                                width: getSize(
                                  31,
                                ),
                                svgPath:
                                    ImageConstant.imgMicrophoneWhiteA70031x31,
                                margin: getMargin(
                                  left: 30,
                                ),
                              ),
                              title: Padding(
                                padding: getPadding(
                                  left: 11,
                                ),
                                child: Text(
                                  "pcast",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtExoBold20,
                                ),
                              ),
                              actions: [
                                Container(
                                  height: getSize(
                                    20,
                                  ),
                                  width: getSize(
                                    20,
                                  ),
                                  margin: getMargin(
                                    left: 33,
                                    top: 6,
                                    right: 5,
                                  ),
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      AppbarImage(
                                        height: getSize(
                                          19,
                                        ),
                                        width: getSize(
                                          19,
                                        ),
                                        svgPath: ImageConstant.imgSearch,
                                        margin: getMargin(
                                          right: 1,
                                          bottom: 1,
                                        ),
                                      ),
                                      AppbarImage(
                                        height: getSize(
                                          20,
                                        ),
                                        width: getSize(
                                          20,
                                        ),
                                        svgPath: ImageConstant.imgSearch,
                                      ),
                                    ],
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
                                    left: 45,
                                    top: 8,
                                    right: 38,
                                    bottom: 4,
                                  ),
                                ),
                              ],
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: getVerticalSize(
                                  220,
                                ),
                                width: getHorizontalSize(
                                  309,
                                ),
                                margin: getMargin(
                                  top: 40,
                                ),
                                child: Stack(
                                  alignment: Alignment.topLeft,
                                  children: [
                                    Align(
                                      alignment: Alignment.center,
                                      child: SizedBox(
                                        height: getVerticalSize(
                                          209,
                                        ),
                                        width: getHorizontalSize(
                                          309,
                                        ),
                                        child: Stack(
                                          alignment: Alignment.bottomCenter,
                                          children: [
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgBg209x309,
                                              height: getVerticalSize(
                                                209,
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
                                              alignment: Alignment.bottomCenter,
                                              child: Padding(
                                                padding: getPadding(
                                                  left: 24,
                                                  right: 24,
                                                  bottom: 24,
                                                ),
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    SizedBox(
                                                      width: getHorizontalSize(
                                                        217,
                                                      ),
                                                      child: Text(
                                                        "About flow and our motivations",
                                                        maxLines: null,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtExoBold24,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: getPadding(
                                                        top: 27,
                                                      ),
                                                      child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                            height:
                                                                getVerticalSize(
                                                              38,
                                                            ),
                                                            width:
                                                                getHorizontalSize(
                                                              160,
                                                            ),
                                                            margin: getMargin(
                                                              top: 4,
                                                              bottom: 7,
                                                            ),
                                                            child: Stack(
                                                              alignment:
                                                                  Alignment
                                                                      .topCenter,
                                                              children: [
                                                                Align(
                                                                  alignment:
                                                                      Alignment
                                                                          .center,
                                                                  child:
                                                                      SizedBox(
                                                                    width:
                                                                        getHorizontalSize(
                                                                      160,
                                                                    ),
                                                                    child:
                                                                        RichText(
                                                                      text:
                                                                          TextSpan(
                                                                        children: [
                                                                          TextSpan(
                                                                            text:
                                                                                "23.05.2019",
                                                                            style:
                                                                                TextStyle(
                                                                              color: ColorConstant.blueGray400,
                                                                              fontSize: getFontSize(
                                                                                13,
                                                                              ),
                                                                              fontFamily: 'Exo',
                                                                              fontWeight: FontWeight.w600,
                                                                            ),
                                                                          ),
                                                                          TextSpan(
                                                                            text:
                                                                                "",
                                                                            style:
                                                                                TextStyle(
                                                                              color: ColorConstant.blueGray400,
                                                                              fontSize: getFontSize(
                                                                                13,
                                                                              ),
                                                                              fontFamily: 'Exo',
                                                                              fontWeight: FontWeight.w600,
                                                                            ),
                                                                          ),
                                                                          TextSpan(
                                                                            text:
                                                                                " ",
                                                                            style:
                                                                                TextStyle(
                                                                              color: ColorConstant.blueGray400,
                                                                              fontSize: getFontSize(
                                                                                13,
                                                                              ),
                                                                              fontFamily: 'Exo',
                                                                              fontWeight: FontWeight.w600,
                                                                            ),
                                                                          ),
                                                                          TextSpan(
                                                                            text:
                                                                                "",
                                                                            style:
                                                                                TextStyle(
                                                                              color: ColorConstant.blueGray400,
                                                                              fontSize: getFontSize(
                                                                                13,
                                                                              ),
                                                                              fontFamily: 'Exo',
                                                                              fontWeight: FontWeight.w600,
                                                                            ),
                                                                          ),
                                                                          TextSpan(
                                                                            text:
                                                                                "24:15:05\n",
                                                                            style:
                                                                                TextStyle(
                                                                              color: ColorConstant.blueGray400,
                                                                              fontSize: getFontSize(
                                                                                13,
                                                                              ),
                                                                              fontFamily: 'Exo',
                                                                              fontWeight: FontWeight.w600,
                                                                            ),
                                                                          ),
                                                                          TextSpan(
                                                                            text:
                                                                                "John Doe & Amanda Smith",
                                                                            style:
                                                                                TextStyle(
                                                                              color: ColorConstant.whiteA700,
                                                                              fontSize: getFontSize(
                                                                                13,
                                                                              ),
                                                                              fontFamily: 'Exo',
                                                                              fontWeight: FontWeight.w600,
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                      textAlign:
                                                                          TextAlign
                                                                              .left,
                                                                    ),
                                                                  ),
                                                                ),
                                                                CustomImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgClock,
                                                                  height:
                                                                      getSize(
                                                                    13,
                                                                  ),
                                                                  width:
                                                                      getSize(
                                                                    13,
                                                                  ),
                                                                  alignment:
                                                                      Alignment
                                                                          .topCenter,
                                                                  margin:
                                                                      getMargin(
                                                                    top: 1,
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
                                      alignment: Alignment.topLeft,
                                      child: Container(
                                        margin: getMargin(
                                          left: 24,
                                        ),
                                        padding: getPadding(
                                          left: 9,
                                          top: 3,
                                          right: 9,
                                          bottom: 3,
                                        ),
                                        decoration:
                                            AppDecoration.fillRedA400.copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.roundedBorder11,
                                        ),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "NEW",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle.txtExoExtraBold12,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            CustomImageView(
                              svgPath: ImageConstant.imgVector,
                              height: getVerticalSize(
                                40,
                              ),
                              width: getHorizontalSize(
                                43,
                              ),
                            ),
                            Container(
                              height: getVerticalSize(
                                414,
                              ),
                              width: getHorizontalSize(
                                374,
                              ),
                              decoration: BoxDecoration(
                                color: ColorConstant.gray900,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: getPadding(
                          bottom: 41,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              "Listen other podcasts",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtExoBold24WhiteA700,
                            ),
                            Padding(
                              padding: getPadding(
                                top: 21,
                                right: 159,
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
                                      style: AppStyle.txtExoBold16,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 32,
                                      top: 2,
                                    ),
                                    child: Text(
                                      "Topics",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtExoMedium16,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 32,
                                      bottom: 2,
                                    ),
                                    child: Text(
                                      "Authors",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtExoMedium16,
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 32,
                                      top: 1,
                                    ),
                                    child: Text(
                                      "Popular",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle.txtExoMedium16,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: getVerticalSize(
                                262,
                              ),
                              child: ListView.separated(
                                padding: getPadding(
                                  top: 30,
                                ),
                                scrollDirection: Axis.horizontal,
                                separatorBuilder: (context, index) {
                                  return SizedBox(
                                    height: getVerticalSize(
                                      16,
                                    ),
                                  );
                                },
                                itemCount: 3,
                                itemBuilder: (context, index) {
                                  return const RecentpodcastsItemWidget();
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        padding: getPadding(
                          left: 31,
                          top: 41,
                          right: 31,
                          bottom: 41,
                        ),
                        decoration: AppDecoration.fillGray900ab,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: double.maxFinite,
                              child: Container(
                                margin: getMargin(
                                  left: 2,
                                  bottom: 373,
                                ),
                                padding: getPadding(
                                  all: 16,
                                ),
                                decoration:
                                    AppDecoration.fillGray90001.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder25,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomSearchView(
                                      focusNode: FocusNode(),
                                      controller: searchtwoController,
                                      hintText: "Urban flow |",
                                      suffix: Container(
                                        margin: getMargin(
                                          left: 30,
                                          top: 16,
                                          right: 16,
                                          bottom: 16,
                                        ),
                                        child: CustomImageView(
                                          svgPath: ImageConstant
                                              .imgSearchBlueGray400,
                                        ),
                                      ),
                                      suffixConstraints: BoxConstraints(
                                        maxHeight: getVerticalSize(
                                          48,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: getPadding(
                                        left: 8,
                                        top: 24,
                                        right: 19,
                                        bottom: 8,
                                      ),
                                      child: ListView.separated(
                                        physics:
                                            const NeverScrollableScrollPhysics(),
                                        shrinkWrap: true,
                                        separatorBuilder: (context, index) {
                                          return SizedBox(
                                            height: getVerticalSize(
                                              25,
                                            ),
                                          );
                                        },
                                        itemCount: 3,
                                        itemBuilder: (context, index) {
                                          return const ListnightstreetItemWidget();
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
