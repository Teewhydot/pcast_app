import 'package:pcast_app/core/app_export.dart';
import 'package:pcast_app/core/constants/constants.dart';
import 'package:pcast_app/presentation/author_screen/widgets/author_item_widget.dart';

class TopicScreen extends StatelessWidget {
  const TopicScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray900,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                const SizedBox(
                  height: 50,
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
                      GestureDetector(
                        onTap: () {},
                        child: AppbarImage(
                            onTap: () {},
                            height: getVerticalSize(14),
                            width: getHorizontalSize(20),
                            svgPath: ImageConstant.imgMenu,
                            margin: getMargin(
                                left: 49, top: 14, right: 44, bottom: 3)),
                      )
                    ]),
                const SizedBox(
                  height: 50,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: getPadding(
                      left: 3,
                    ),
                    child: Text(
                      "Positive",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoBold48,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: getPadding(
                      left: 3,
                    ),
                    child: Text(
                      "Psychology",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtRobotoBold48,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  children: [
                    CustomButton(
                        height: getHorizontalSize(51),
                        width: getVerticalSize(155),
                        text: 'Subscribe',
                        shape: ButtonShape.RoundedBorder25,
                        padding: ButtonPadding.PaddingAll4,
                        fontStyle: ButtonFontStyle.RobotoBlack12,
                        alignment: Alignment.topLeft),
                    Padding(
                        padding: getPadding(left: 24, top: 17, bottom: 16),
                        child: Text("+123k followers",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtRobotoMedium14WhiteA700)),
                  ],
                ),
                Padding(
                    padding: getPadding(top: 41),
                    child: Row(children: [
                      Padding(
                          padding: getPadding(bottom: 1),
                          child: Text("Recent",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRegular16)),
                      Padding(
                          padding: getPadding(left: 24, top: 1),
                          child: Text("Popular",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRegular16Bluegray400)),
                      Padding(
                          padding: getPadding(left: 24, top: 1),
                          child: Text("As guest",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtRobotoRegular16Bluegray400))
                    ])),
                Padding(
                    padding: getPadding(top: 22),
                    child: ListView.separated(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (context, index) {
                          return SizedBox(height: getVerticalSize(16));
                        },
                        itemCount: 8,
                        itemBuilder: (context, index) {
                          return const AuthorItemWidget();
                        }))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
