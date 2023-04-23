import 'package:flutter/material.dart';
import 'package:pcast_app/core/utils/color_constant.dart';
import 'package:pcast_app/core/utils/size_utils.dart';
import 'package:pcast_app/theme/app_decoration.dart';
import 'package:pcast_app/theme/app_style.dart';

// ignore: must_be_immutable
class BrowseItemWidget extends StatelessWidget {
  const BrowseItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        all: 16,
      ),
      decoration: AppDecoration.gradientCyan300Orange300.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: getSize(
              24,
            ),
            width: getSize(
              24,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(
                  getHorizontalSize(
                    8,
                  ),
                ),
                topRight: Radius.circular(
                  getHorizontalSize(
                    8,
                  ),
                ),
                bottomLeft: Radius.circular(
                  getHorizontalSize(
                    8,
                  ),
                ),
              ),
              gradient: LinearGradient(
                begin: const Alignment(
                  0,
                  0,
                ),
                end: const Alignment(
                  1,
                  1,
                ),
                colors: [
                  ColorConstant.cyan300,
                  ColorConstant.orange300,
                ],
              ),
            ),
          ),
          Container(
            width: getHorizontalSize(
              101,
            ),
            margin: getMargin(
              top: 17,
              bottom: 5,
            ),
            child: Text(
              "Art and entertainment",
              maxLines: null,
              textAlign: TextAlign.left,
              style: AppStyle.txtRobotoMedium16WhiteA7001,
            ),
          ),
        ],
      ),
    );
  }
}
