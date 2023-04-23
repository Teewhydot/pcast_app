import 'package:pcast_app/core/app_export.dart';

// ignore: must_be_immutable
class PodcastItemWidget extends StatelessWidget {
  const PodcastItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 16,
        top: 12,
        right: 16,
        bottom: 12,
      ),
      decoration: AppDecoration.fillBlack90001.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomIconButton(
            height: 32,
            width: 32,
            margin: getMargin(
              top: 3,
              bottom: 3,
            ),
            variant: IconButtonVariant.FillBlueA700,
            padding: IconButtonPadding.PaddingAll9,
            child: CustomImageView(
              svgPath: ImageConstant.imgShapestroke,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 16,
              top: 1,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: getPadding(
                        top: 1,
                      ),
                      child: Text(
                        "Episode 1",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRobotoRegular14WhiteA700,
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 75,
                        bottom: 3,
                      ),
                      child: Text(
                        "10:15:00",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRobotoRegular12,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: getPadding(
                    top: 2,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: getPadding(
                          top: 1,
                        ),
                        child: Text(
                          "23 May 2019",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRobotoRegular12,
                        ),
                      ),
                      Padding(
                        padding: getPadding(
                          left: 81,
                          bottom: 1,
                        ),
                        child: Text(
                          "10mb",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtRobotoRegular12,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          CustomIconButton(
            height: 32,
            width: 32,
            margin: getMargin(
              left: 16,
              top: 3,
              bottom: 3,
            ),
            padding: IconButtonPadding.PaddingAll9,
            child: CustomImageView(
              svgPath: ImageConstant.imgDownload,
            ),
          ),
        ],
      ),
    );
  }
}
