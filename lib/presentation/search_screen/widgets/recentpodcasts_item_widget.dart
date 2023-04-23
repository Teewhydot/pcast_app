import 'package:pcast_app/core/app_export.dart';

// ignore: must_be_immutable
class RecentpodcastsItemWidget extends StatelessWidget {
  const RecentpodcastsItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Padding(
        padding: getPadding(
          right: 16,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImage3,
              height: getVerticalSize(
                136,
              ),
              width: getHorizontalSize(
                147,
              ),
              radius: BorderRadius.only(
                topLeft: Radius.circular(
                  getHorizontalSize(
                    16,
                  ),
                ),
                topRight: Radius.circular(
                  getHorizontalSize(
                    16,
                  ),
                ),
                bottomLeft: Radius.circular(
                  getHorizontalSize(
                    16,
                  ),
                ),
              ),
            ),
            Container(
              width: getHorizontalSize(
                125,
              ),
              margin: getMargin(
                top: 15,
              ),
              child: Text(
                "Miam isn’t the best place to live",
                maxLines: null,
                textAlign: TextAlign.left,
                style: AppStyle.txtExoBold14,
              ),
            ),
            Padding(
              padding: getPadding(
                top: 6,
              ),
              child: Row(
                children: [
                  SizedBox(
                    height: getVerticalSize(
                      33,
                    ),
                    width: getHorizontalSize(
                      66,
                    ),
                    child: Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            width: getHorizontalSize(
                              66,
                            ),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "      24:15:05\n",
                                    style: TextStyle(
                                      color: ColorConstant.blueGray400,
                                      fontSize: getFontSize(
                                        12,
                                      ),
                                      fontFamily: 'Exo',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  TextSpan(
                                    text: "John Smith",
                                    style: TextStyle(
                                      color: ColorConstant.whiteA700,
                                      fontSize: getFontSize(
                                        12,
                                      ),
                                      fontFamily: 'Exo',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
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
                          alignment: Alignment.topLeft,
                          margin: getMargin(
                            top: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomIconButton(
                    height: 32,
                    width: 32,
                    margin: getMargin(
                      left: 49,
                      top: 1,
                    ),
                    variant: IconButtonVariant.FillBlueA700,
                    padding: IconButtonPadding.PaddingAll9,
                    child: CustomImageView(
                      svgPath: ImageConstant.imgShapestroke,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
