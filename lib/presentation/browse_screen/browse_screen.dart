// ignore_for_file: must_be_immutable

import 'package:pcast_app/core/app_export.dart';
import 'package:pcast_app/presentation/browse_episodes_screen/widgets/listshapestroke_item_widget.dart';
import 'package:pcast_app/presentation/browse_podcasts_screen/widgets/listbg1_item_widget.dart';
import 'package:pcast_app/presentation/browse_screen/widgets/browse_item_widget.dart';
import 'package:pcast_app/presentation/browse_screen/widgets/tabs1_item_widget.dart';
import 'package:pcast_app/presentation/browse_topics_screen/widgets/listbg_item_widget.dart';
import 'package:pcast_app/widgets/custom_search_view.dart';

class BrowseScreen extends StatefulWidget {
  const BrowseScreen({super.key});

  @override
  State<BrowseScreen> createState() => _BrowseScreenState();
}

class _BrowseScreenState extends State<BrowseScreen> {
  TextEditingController searchOneController = TextEditingController();
  List<bool> isActive = [true, false, false, false, false];

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
                    controller: searchOneController,
                    hintText: "Robert |",
                    margin: getMargin(
                      top: 38,
                      right: 33,
                    ),
                    variant: SearchViewVariant.FillBlack9008701,
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
                  // AnimSearchBar(
                  //     width: 400,
                  //     textController: searchOneController,
                  //     style: AppStyle.txtRobotoRegular16,
                  //     color: ColorConstant.gray900,
                  //     closeSearchOnSuffixTap: true,
                  //     rtl: true,
                  //     searchIconColor: ColorConstant.whiteA700,
                  //     helpText: "Search",
                  //     animationDurationInMilli: 400,
                  //     inputFormatters: [
                  //       LengthLimitingTextInputFormatter(20),
                  //       FilteringTextInputFormatter.digitsOnly,
                  //     ],
                  //     onSuffixTap: () {},
                  //     onSubmitted: (_) {}),
                  Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      height: getVerticalSize(
                        131,
                      ),
                      child: ListView(
                        padding: getPadding(
                          left: 3,
                          top: 32,
                        ),
                        scrollDirection: Axis.horizontal,
                        children: [
                          Center(
                            child: ToggleButtons(
                              fillColor: Colors.transparent,
                              onPressed: (int newIndex) {
                                setState(() {
                                  for (int index = 0;
                                      index < isActive.length;
                                      index++) {
                                    if (index == newIndex) {
                                      isActive[index] = true;
                                    } else {
                                      isActive[index] = false;
                                    }
                                  }
                                });
                              },
                              isSelected: isActive,
                              children: [
                                Tabs1ItemWidget(
                                  imageConstant: isActive[0]
                                      ? ImageConstant.imgMusicWhiteA700
                                      : ImageConstant.imgMusic,
                                  title: "Categories",
                                ),
                                Tabs1ItemWidget(
                                  imageConstant: isActive[1]
                                      ? ImageConstant.imgGlobe
                                      : ImageConstant.imgGlobeBlueGray400,
                                  title: "Authors",
                                ),
                                Tabs1ItemWidget(
                                  imageConstant: isActive[2]
                                      ? ImageConstant.imgGlobe
                                      : ImageConstant.imgGlobeBlueGray400,
                                  title: "Topics",
                                ),
                                Tabs1ItemWidget(
                                  imageConstant: isActive[3]
                                      ? ImageConstant.imgMusicWhiteA700
                                      : ImageConstant.imgMusic,
                                  title: "Episodes",
                                ),
                                Tabs1ItemWidget(
                                  imageConstant: isActive[4]
                                      ? ImageConstant.imgMicrophoneWhiteA700
                                      : ImageConstant.imgMicrophone,
                                  title: "Podcasts",
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  /// Dynamic UI

                  isActive[0]
                      ? Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: getPadding(
                                left: 6,
                                top: 52,
                              ),
                              child: Text(
                                "Categories",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRobotoMedium16,
                              ),
                            ),
                            Padding(
                              padding: getPadding(
                                left: 3,
                                top: 23,
                                right: 32,
                              ),
                              child: GridView.builder(
                                shrinkWrap: true,
                                gridDelegate:
                                    SliverGridDelegateWithFixedCrossAxisCount(
                                  mainAxisExtent: getVerticalSize(
                                    123,
                                  ),
                                  crossAxisCount: 2,
                                  mainAxisSpacing: getHorizontalSize(
                                    16,
                                  ),
                                  crossAxisSpacing: getHorizontalSize(
                                    16,
                                  ),
                                ),
                                physics: const NeverScrollableScrollPhysics(),
                                itemCount: 8,
                                itemBuilder: (context, index) {
                                  return const BrowseItemWidget();
                                },
                              ),
                            ),
                          ],
                        )
                      : Container(),
                  isActive[1]
                      ? Column(
                          children: [
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
                                              decoration: AppDecoration
                                                  .fillBlueA700
                                                  .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .customBorderTL24,
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
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRobotoMedium18,
                                                  ),
                                                  Padding(
                                                    padding: getPadding(
                                                      top: 6,
                                                      right: 22,
                                                    ),
                                                    child: Text(
                                                      "Podcasts: 7 286",
                                                      overflow:
                                                          TextOverflow.ellipsis,
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
                                                alignment:
                                                    Alignment.bottomCenter,
                                                children: [
                                                  CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgAuthorimage,
                                                    height: getVerticalSize(
                                                      158,
                                                    ),
                                                    width: getHorizontalSize(
                                                      117,
                                                    ),
                                                    alignment: Alignment.center,
                                                  ),
                                                  CustomImageView(
                                                    imagePath:
                                                        ImageConstant.imgGlow,
                                                    height: getVerticalSize(
                                                      99,
                                                    ),
                                                    width: getHorizontalSize(
                                                      114,
                                                    ),
                                                    alignment:
                                                        Alignment.bottomCenter,
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
                                              decoration: AppDecoration
                                                  .fillRedA400
                                                  .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .customBorderTL24,
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
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRobotoMedium18,
                                                  ),
                                                  Padding(
                                                    padding: getPadding(
                                                      top: 6,
                                                      right: 7,
                                                    ),
                                                    child: Text(
                                                      "Podcasts: 7 286",
                                                      overflow:
                                                          TextOverflow.ellipsis,
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
                                                alignment:
                                                    Alignment.bottomCenter,
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
                                                    imagePath: ImageConstant
                                                        .imgGlow99x117,
                                                    height: getVerticalSize(
                                                      99,
                                                    ),
                                                    width: getHorizontalSize(
                                                      117,
                                                    ),
                                                    alignment:
                                                        Alignment.bottomCenter,
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
                                              decoration: AppDecoration
                                                  .fillTealA700
                                                  .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .customBorderTL24,
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
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRobotoMedium18,
                                                  ),
                                                  Padding(
                                                    padding: getPadding(
                                                      top: 6,
                                                      right: 43,
                                                    ),
                                                    child: Text(
                                                      "Podcasts: 7 286",
                                                      overflow:
                                                          TextOverflow.ellipsis,
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
                                                alignment:
                                                    Alignment.bottomCenter,
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
                                                    imagePath: ImageConstant
                                                        .imgGlow99x115,
                                                    height: getVerticalSize(
                                                      99,
                                                    ),
                                                    width: getHorizontalSize(
                                                      115,
                                                    ),
                                                    alignment:
                                                        Alignment.bottomCenter,
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
                        )
                      : Container(),
                  isActive[3]
                      ? Column(
                          children: [
                            Padding(
                              padding: getPadding(
                                left: 3,
                                top: 52,
                              ),
                              child: Text(
                                "Episodes (3)",
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
                                      16,
                                    ),
                                  );
                                },
                                itemCount: 3,
                                itemBuilder: (context, index) {
                                  return const ListshapestrokeItemWidget();
                                },
                              ),
                            ),
                          ],
                        )
                      : Container(),
                  isActive[4]
                      ? Column(
                          children: [
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
                        )
                      : Container(),
                  isActive[2]
                      ? Column(
                          children: [
                            Padding(
                              padding: getPadding(
                                left: 6,
                                top: 52,
                              ),
                              child: Text(
                                "Topics (4)",
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
                                      24,
                                    ),
                                  );
                                },
                                itemCount: 4,
                                itemBuilder: (context, index) {
                                  return const ListbgItemWidget();
                                },
                              ),
                            ),
                          ],
                        )
                      : Container(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
