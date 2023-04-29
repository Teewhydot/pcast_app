// ignore_for_file: must_be_immutable

import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pcast_app/core/utils/color_constant.dart';
import 'package:pcast_app/core/utils/image_constant.dart';
import 'package:pcast_app/core/utils/size_utils.dart';
import 'package:pcast_app/theme/app_style.dart';
import 'package:pcast_app/widgets/app_bar/appbar_image.dart';
import 'package:pcast_app/widgets/app_bar/custom_app_bar.dart';
import 'package:pcast_app/widgets/custom_image_view.dart';
import 'package:pcast_app/widgets/custom_search_view.dart';

import '../browse_categories_screen/widgets/browse_item_widget.dart';
import '../browse_categories_screen/widgets/tabs1_item_widget.dart';

class BrowseCategoriesScreen extends StatefulWidget {
  const BrowseCategoriesScreen({super.key});

  @override
  State<BrowseCategoriesScreen> createState() => _BrowseCategoriesScreenState();
}

class _BrowseCategoriesScreenState extends State<BrowseCategoriesScreen> {
  TextEditingController searchOneController = TextEditingController();
  final List<String> _suggestions = [
    'All',
    'Arts',
    'Business',
    'Comedy',
    'Education',
    'Fiction',
    'Government',
    'History',
    'Health',
    'Kids & Family',
    'Leisure',
    'Music',
    'News',
    'Religion',
    'Science',
    'Sports',
    'Technology',
    'True Crime',
    'TV & Film',
  ];

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
                  AnimSearchBar(
                      width: 400,
                      textController: searchOneController,
                      style: AppStyle.txtRobotoRegular16,
                      color: ColorConstant.gray900,
                      closeSearchOnSuffixTap: true,
                      rtl: true,
                      searchIconColor: ColorConstant.whiteA700,
                      helpText: "Search",
                      animationDurationInMilli: 400,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(20),
                        FilteringTextInputFormatter.digitsOnly,
                      ],
                      onSuffixTap: () {},
                      onSubmitted: (_) {}),
                  Align(
                    alignment: Alignment.centerRight,
                    child: SizedBox(
                      height: getVerticalSize(
                        121,
                      ),
                      child: ListView.separated(
                        padding: getPadding(
                          left: 3,
                          top: 32,
                        ),
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            height: getVerticalSize(
                              21,
                            ),
                          );
                        },
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return const Tabs1ItemWidget();
                        },
                      ),
                    ),
                  ),
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
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
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
              ),
            ),
          ),
        ),
      ),
    );
  }
}
