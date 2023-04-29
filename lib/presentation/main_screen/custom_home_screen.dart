import 'package:pcast_app/core/app_export.dart';
import 'package:pcast_app/core/constants/constants.dart';
import 'package:pcast_app/presentation/main_screen/widgets/otherpodcasts_item_widget.dart';

import '../main_screen/widgets/podcast_authors_widget.dart';

/// Custom home translate
///
class CustomHomeTranslate extends StatefulWidget {
  const CustomHomeTranslate({super.key});

  @override
  State<CustomHomeTranslate> createState() => _CustomHomeTranslateState();
}

class _CustomHomeTranslateState extends State<CustomHomeTranslate>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  final headerKey = const Key('header');
  final portfolioKey = const Key('portfolio');
  final servicesKey = const Key('Services');
  final aboutKey = const Key('about key');
  final contactKey = const Key('contact key');

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 250));
  }

  void toggle() =>
      _controller.isDismissed ? _controller.forward() : _controller.reverse();
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          final double slide =
              MediaQuery.of(context).size.width * _controller.value;
          return GestureDetector(
            onHorizontalDragStart: (details) {
              if (details.globalPosition.dx < 50) {
                toggle();
              }
            },
            onHorizontalDragUpdate: (details) {
              if (details.delta.dx > 0) {
                _controller.value += details.delta.dx / 200;
              }
            },
            onHorizontalDragEnd: (details) {
              if (_controller.value < 0.5) {
                _controller.reverse();
              } else {
                _controller.forward();
              }
            },
            child: Stack(
              children: [
                /// Start of navigation widget
                SizedBox(
                  height: double.infinity,
                  child: Material(
                    color: ColorConstant.gray900,
                    child: SafeArea(
                      child: Theme(
                        data: ThemeData(brightness: Brightness.dark),
                        child: SafeArea(
                            child: Scaffold(
                                backgroundColor: ColorConstant.gray900,
                                body: SizedBox(
                                    height: size.height,
                                    width: double.maxFinite,
                                    child: Stack(
                                        alignment: Alignment.center,
                                        children: [
                                          Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                  margin: getMargin(left: 1),
                                                  decoration: AppDecoration
                                                      .fillGray900ab,
                                                  child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .end,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        Container(
                                                            width:
                                                                getHorizontalSize(
                                                                    345),
                                                            margin: getMargin(
                                                                left: 29),
                                                            padding: getPadding(
                                                                top: 31,
                                                                bottom: 31),
                                                            decoration: AppDecoration
                                                                .fillBlack900
                                                                .copyWith(
                                                                    borderRadius:
                                                                        BorderRadiusStyle
                                                                            .customBorderBL24),
                                                            child: Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .min,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .end,
                                                                children: [
                                                                  CustomAppBar(
                                                                      height:
                                                                          getVerticalSize(
                                                                              84),
                                                                      title: Container(
                                                                          width: getHorizontalSize(
                                                                              202),
                                                                          margin: getMargin(
                                                                              left:
                                                                                  70),
                                                                          child: Text(
                                                                              "Hello,\nTeewhydot!",
                                                                              maxLines: null,
                                                                              textAlign: TextAlign.left,
                                                                              style: AppStyle.txtRobotoMedium24)),
                                                                      actions: [
                                                                        SizedBox(
                                                                            height:
                                                                                getVerticalSize(25),
                                                                            width: getHorizontalSize(24),
                                                                            child: Stack(alignment: Alignment.centerRight, children: [
                                                                              AppbarImage(height: getSize(20), width: getSize(20), svgPath: ImageConstant.imgNotification, margin: getMargin(top: 5, right: 4)),
                                                                            ])),
                                                                        AppbarImage(
                                                                            height: getSize(
                                                                                20),
                                                                            width: getSize(
                                                                                20),
                                                                            onTap:
                                                                                () {
                                                                              if (_controller.isCompleted) {
                                                                                _controller.reverse();
                                                                              }
                                                                            },
                                                                            svgPath: ImageConstant
                                                                                .imgClose,
                                                                            margin: getMargin(
                                                                                left: 40,
                                                                                top: 6,
                                                                                right: 65))
                                                                      ]),
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .centerRight,
                                                                      child: Padding(
                                                                          padding: getPadding(
                                                                              top:
                                                                                  24),
                                                                          child: Divider(
                                                                              height: getVerticalSize(1),
                                                                              thickness: getVerticalSize(1),
                                                                              color: ColorConstant.whiteA70019,
                                                                              indent: getHorizontalSize(40),
                                                                              endIndent: getHorizontalSize(1)))),
                                                                  Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .center,
                                                                      child: Padding(
                                                                          padding: getPadding(left: 40, top: 24, right: 32),
                                                                          child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                                                                            CustomImageView(
                                                                                imagePath: ImageConstant.img03w32x32,
                                                                                height: getSize(32),
                                                                                width: getSize(32),
                                                                                radius: BorderRadius.circular(getHorizontalSize(16)),
                                                                                margin: getMargin(top: 1)),
                                                                            Container(
                                                                                width: getHorizontalSize(76),
                                                                                margin: getMargin(left: 24),
                                                                                child: Text("Listened time:\n24:15:05", maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular12Bluegray400)),
                                                                            Container(
                                                                                width: getHorizontalSize(48),
                                                                                margin: getMargin(left: 19),
                                                                                child: Text("Playlists:\n27", maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular12Bluegray400)),
                                                                            Container(
                                                                                width: getHorizontalSize(55),
                                                                                margin: getMargin(left: 19),
                                                                                child: Text("Following:\n179", maxLines: null, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular12Bluegray400))
                                                                          ])))
                                                                ])),
                                                        Expanded(
                                                            child: Container(
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            28,
                                                                        top: 16,
                                                                        right:
                                                                            1),
                                                                padding:
                                                                    getPadding(
                                                                        left:
                                                                            48,
                                                                        top: 40,
                                                                        right:
                                                                            48,
                                                                        bottom:
                                                                            40),
                                                                decoration: AppDecoration
                                                                    .fillBlack900
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .customBorderTL241),
                                                                child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .min,
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    mainAxisAlignment:
                                                                        MainAxisAlignment
                                                                            .end,
                                                                    children: [
                                                                      GestureDetector(
                                                                          onTap:
                                                                              () {
                                                                            onTapRowglobe(context);
                                                                          },
                                                                          child: Padding(
                                                                              padding: getPadding(left: 1, top: 9),
                                                                              child: Row(children: [
                                                                                CustomImageView(svgPath: ImageConstant.imgGlobeBlueGray400, height: getSize(16), width: getSize(16)),
                                                                                Padding(padding: getPadding(left: 31), child: Text("Browse", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoMedium14WhiteA700))
                                                                              ]))),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  1,
                                                                              top:
                                                                                  37),
                                                                          child:
                                                                              Row(children: [
                                                                            CustomImageView(
                                                                                svgPath: ImageConstant.imgEye,
                                                                                height: getSize(16),
                                                                                width: getSize(16)),
                                                                            Padding(
                                                                                padding: getPadding(left: 31),
                                                                                child: Text("Subscribed", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoMedium14WhiteA700))
                                                                          ])),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  1,
                                                                              top:
                                                                                  37),
                                                                          child:
                                                                              Row(children: [
                                                                            CustomImageView(
                                                                                svgPath: ImageConstant.imgFavorite,
                                                                                height: getSize(16),
                                                                                width: getSize(16)),
                                                                            Padding(
                                                                                padding: getPadding(left: 31),
                                                                                child: Text("Favourites", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoMedium14WhiteA700))
                                                                          ])),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  1,
                                                                              top:
                                                                                  38),
                                                                          child:
                                                                              Row(children: [
                                                                            CustomImageView(
                                                                                svgPath: ImageConstant.imgClockBlueGray400,
                                                                                height: getSize(16),
                                                                                width: getSize(16),
                                                                                margin: getMargin(bottom: 1)),
                                                                            Padding(
                                                                                padding: getPadding(left: 31),
                                                                                child: Text("History", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoMedium14WhiteA700))
                                                                          ])),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  1,
                                                                              top:
                                                                                  38),
                                                                          child:
                                                                              Row(children: [
                                                                            CustomImageView(
                                                                                svgPath: ImageConstant.imgTicket,
                                                                                height: getSize(16),
                                                                                width: getSize(16),
                                                                                margin: getMargin(bottom: 1)),
                                                                            Padding(
                                                                                padding: getPadding(left: 31),
                                                                                child: Text("Payments", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoMedium14WhiteA700))
                                                                          ])),
                                                                      Padding(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  1,
                                                                              top:
                                                                                  38),
                                                                          child:
                                                                              Row(children: [
                                                                            CustomImageView(
                                                                                svgPath: ImageConstant.imgCamera,
                                                                                height: getSize(16),
                                                                                width: getSize(16),
                                                                                margin: getMargin(bottom: 1)),
                                                                            Padding(
                                                                                padding: getPadding(left: 31),
                                                                                child: Text("Account settings", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoMedium14WhiteA700))
                                                                          ])),
                                                                      const Spacer(),
                                                                      Container(
                                                                          padding: getPadding(
                                                                              left:
                                                                                  16,
                                                                              top:
                                                                                  14,
                                                                              right:
                                                                                  16,
                                                                              bottom:
                                                                                  14),
                                                                          decoration: AppDecoration.fillGray90001.copyWith(
                                                                              borderRadius: BorderRadiusStyle
                                                                                  .roundedBorder25),
                                                                          child: Row(
                                                                              mainAxisAlignment: MainAxisAlignment.end,
                                                                              crossAxisAlignment: CrossAxisAlignment.start,
                                                                              children: [
                                                                                Padding(padding: getPadding(top: 2), child: Text("Logout", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoMedium16WhiteA700)),
                                                                                CustomImageView(svgPath: ImageConstant.imgArrowright, height: getSize(16), width: getSize(16), margin: getMargin(left: 68, top: 2, bottom: 3))
                                                                              ]))
                                                                    ])))
                                                      ])))
                                        ])))),
                      ),
                    ),
                  ),
                ),

                /// END OF Navigation widget
                Transform(
                  transform: Matrix4.translationValues(slide, 0.0, 0.0),
                  child: GestureDetector(
                      onTap: () {
                        if (_controller.isCompleted) {
                          _controller.reverse();
                        }
                      },

                      /// BODY WIDGET
                      child: Scaffold(
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
                                                svgPath:
                                                    ImageConstant.imgSearch,
                                                margin: getMargin(
                                                    left: 33,
                                                    top: 12,
                                                    right: 11),
                                                onTap: () =>
                                                    onTapSearch(context)),
                                            GestureDetector(
                                              onTap: () {
                                                toggle();
                                              },
                                              child: AppbarImage(
                                                  onTap: () {
                                                    toggle();
                                                  },
                                                  height: getVerticalSize(14),
                                                  width: getHorizontalSize(20),
                                                  svgPath:
                                                      ImageConstant.imgMenu,
                                                  margin: getMargin(
                                                      left: 49,
                                                      top: 14,
                                                      right: 44,
                                                      bottom: 3)),
                                            )
                                          ]),
                                      const SizedBox(
                                        height: 50,
                                      ),
                                      Stack(clipBehavior: Clip.none, children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgBg180x309,
                                            height: getVerticalSize(180),
                                            width: getHorizontalSize(309),
                                            radius: BorderRadius.only(
                                                topLeft: Radius.circular(
                                                    getHorizontalSize(24)),
                                                topRight: Radius.circular(
                                                    getHorizontalSize(24)),
                                                bottomLeft: Radius.circular(
                                                    getHorizontalSize(24))),
                                            alignment: Alignment.center),
                                        Positioned(
                                          left: 50,
                                          top: -10,
                                          child: CustomButton(
                                              height: getVerticalSize(23),
                                              width: getHorizontalSize(46),
                                              text: "NEW",
                                              margin: getMargin(left: 32),
                                              variant:
                                                  ButtonVariant.FillRedA400,
                                              shape:
                                                  ButtonShape.RoundedBorder11,
                                              padding:
                                                  ButtonPadding.PaddingAll4,
                                              fontStyle:
                                                  ButtonFontStyle.RobotoBlack12,
                                              alignment: Alignment.topLeft),
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              left: 50, right: 50, top: 30),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                SizedBox(
                                                    width:
                                                        getHorizontalSize(204),
                                                    child: Text(
                                                        "About flow and our motivations",
                                                        maxLines: null,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtRobotoMedium24)),
                                                Padding(
                                                    padding:
                                                        getPadding(top: 16),
                                                    child: Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 5,
                                                                      bottom:
                                                                          6),
                                                              child: Column(
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  mainAxisAlignment:
                                                                      MainAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    SizedBox(
                                                                        height: getVerticalSize(
                                                                            16),
                                                                        width: getHorizontalSize(
                                                                            145),
                                                                        child: Stack(
                                                                            alignment:
                                                                                Alignment.topRight,
                                                                            children: [
                                                                              Align(
                                                                                alignment: Alignment.center,
                                                                                child: Text("23.05.2019         24:15:05", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular13),
                                                                              ),
                                                                              CustomImageView(svgPath: ImageConstant.imgClock, height: getSize(13), width: getSize(13), alignment: Alignment.topRight, margin: getMargin(top: 1, right: 58))
                                                                            ])),
                                                                    Padding(
                                                                        padding: getPadding(
                                                                            top:
                                                                                6),
                                                                        child: Row(
                                                                            children: [
                                                                              CustomImageView(
                                                                                imagePath: ImageConstant.img03w,
                                                                                height: getSize(16),
                                                                                width: getSize(16),
                                                                                radius: BorderRadius.circular(
                                                                                  getHorizontalSize(8),
                                                                                ),
                                                                              ),
                                                                              Padding(padding: getPadding(left: 8), child: Text("Harold Mccoy", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRegular13WhiteA700))
                                                                            ]))
                                                                  ])),
                                                          CustomIconButton(
                                                              height: 51,
                                                              width: 51,
                                                              variant:
                                                                  IconButtonVariant
                                                                      .FillRedA400,
                                                              shape: IconButtonShape
                                                                  .RoundedBorder25,
                                                              child: CustomImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgShape))
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
                                        padding:
                                            getPadding(bottom: 163, top: 50),
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
                                                      top: 21, right: 50),
                                                  child: Row(children: [
                                                    Padding(
                                                        padding: getPadding(
                                                            bottom: 1),
                                                        child: Text("Recent",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtRobotoRegular16)),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 24, top: 1),
                                                        child: Text("Topics",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtRobotoRegular16Bluegray400)),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 24,
                                                            bottom: 1),
                                                        child: Text("Authors",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtRobotoRegular16Bluegray400)),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 24, top: 1),
                                                        child: Text("Episodes",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtRobotoRegular16Bluegray400))
                                                  ])),
                                              SizedBox(
                                                  height: getVerticalSize(272),
                                                  child: ListView.separated(
                                                      padding:
                                                          getPadding(top: 38),
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
                                                    top: 23,
                                                  ),
                                                  child: Row(children: [
                                                    Padding(
                                                        padding: getPadding(
                                                            bottom: 1),
                                                        child: Text("Recent",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtRobotoRegular16Bluegray400)),
                                                    Padding(
                                                        padding: getPadding(
                                                            left: 24, top: 1),
                                                        child: Text(
                                                            "Most podcasts",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
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
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtRobotoRegular16Bluegray400))
                                                  ])),
                                              SizedBox(
                                                  height: getVerticalSize(152),
                                                  child: ListView.separated(
                                                      padding:
                                                          getPadding(top: 38),
                                                      scrollDirection:
                                                          Axis.horizontal,
                                                      separatorBuilder:
                                                          (context, index) {
                                                        return SizedBox(
                                                            height:
                                                                getVerticalSize(
                                                                    64));
                                                      },
                                                      itemCount: 55,
                                                      itemBuilder:
                                                          (context, index) {
                                                        return const PodcastAuthorsWidget();
                                                      }))
                                            ])))
                              ],
                            ),
                          ),
                        ),
                      )),
                ),
              ],
            ),
          );
        });
  }
}
