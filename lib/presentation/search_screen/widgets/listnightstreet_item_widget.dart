import 'package:pcast_app/core/app_export.dart';

// ignore: must_be_immutable
class ListnightstreetItemWidget extends StatelessWidget {
  const ListnightstreetItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgImage4,
          height: getVerticalSize(
            65,
          ),
          width: getHorizontalSize(
            71,
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
        Padding(
          padding: getPadding(
            top: 3,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Night streets in Hog Kong",
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.left,
                style: AppStyle.txtRobotoMedium14WhiteA700,
              ),
              Container(
                height: getVerticalSize(
                  35,
                ),
                width: getHorizontalSize(
                  89,
                ),
                margin: getMargin(
                  top: 8,
                ),
                child: Stack(
                  alignment: Alignment.topLeft,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        width: getHorizontalSize(
                          89,
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
                                  fontFamily: 'Roboto',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                              TextSpan(
                                text: "Janush Kowalski",
                                style: TextStyle(
                                  color: ColorConstant.whiteA700,
                                  fontSize: getFontSize(
                                    12,
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
                      svgPath: ImageConstant.imgClock,
                      height: getSize(
                        13,
                      ),
                      width: getSize(
                        13,
                      ),
                      alignment: Alignment.topLeft,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
