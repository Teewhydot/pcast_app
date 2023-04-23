import 'package:flutter/material.dart';
import 'package:pcast_app/core/utils/color_constant.dart';
import 'package:pcast_app/core/utils/image_constant.dart';
import 'package:pcast_app/core/utils/size_utils.dart';
import 'package:pcast_app/theme/app_decoration.dart';
import 'package:pcast_app/theme/app_style.dart';
import 'package:pcast_app/widgets/custom_button.dart';
import 'package:pcast_app/widgets/custom_image_view.dart';
import 'package:pcast_app/widgets/custom_text_form_field.dart';

class LoginScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray900,
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            height: size.height,
            width: double.maxFinite,
            child: Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: size.height,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                          ImageConstant.imgGroup117,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            height: getVerticalSize(
                              73,
                            ),
                            width: getHorizontalSize(
                              278,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.gray400,
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
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            height: getVerticalSize(
                              759,
                            ),
                            width: getHorizontalSize(
                              343,
                            ),
                            decoration: BoxDecoration(
                              color: ColorConstant.gray900,
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(
                                  getHorizontalSize(
                                    24,
                                  ),
                                ),
                              ),
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
                      1610,
                    ),
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgFrame,
                          height: getVerticalSize(
                            812,
                          ),
                          width: getHorizontalSize(
                            375,
                          ),
                          alignment: Alignment.topCenter,
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            margin: getMargin(
                              left: 1,
                            ),
                            padding: getPadding(
                              left: 32,
                              top: 47,
                              right: 32,
                              bottom: 47,
                            ),
                            decoration: AppDecoration.gradientGray90000Gray90000
                                .copyWith(
                              borderRadius: BorderRadiusStyle.customBorderBR24,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgLogoBlueA700,
                                  height: getVerticalSize(
                                    72,
                                  ),
                                  width: getHorizontalSize(
                                    156,
                                  ),
                                  margin: getMargin(
                                    top: 4,
                                  ),
                                ),
                                Container(
                                  width: getHorizontalSize(
                                    192,
                                  ),
                                  margin: getMargin(
                                    top: 46,
                                  ),
                                  child: Text(
                                    "Episodic series of digital audio.",
                                    maxLines: null,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtRobotoMedium24,
                                  ),
                                ),
                                CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: emailController,
                                  hintText: "E-mail address",
                                  margin: getMargin(
                                    top: 68,
                                    right: 2,
                                  ),
                                  textInputType: TextInputType.emailAddress,
                                  prefix: Container(
                                    margin: getMargin(
                                      left: 24,
                                      top: 21,
                                      right: 24,
                                      bottom: 21,
                                    ),
                                    child: CustomImageView(
                                      svgPath: ImageConstant.imgMail,
                                    ),
                                  ),
                                  prefixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(
                                      58,
                                    ),
                                  ),
                                ),
                                CustomTextFormField(
                                  focusNode: FocusNode(),
                                  controller: passwordController,
                                  hintText: "Password",
                                  margin: getMargin(
                                    top: 16,
                                    right: 2,
                                  ),
                                  textInputAction: TextInputAction.done,
                                  textInputType: TextInputType.visiblePassword,
                                  prefix: Container(
                                    margin: getMargin(
                                      left: 24,
                                      top: 21,
                                      right: 24,
                                      bottom: 21,
                                    ),
                                    child: CustomImageView(
                                      svgPath: ImageConstant.imgQuestion,
                                    ),
                                  ),
                                  prefixConstraints: BoxConstraints(
                                    maxHeight: getVerticalSize(
                                      58,
                                    ),
                                  ),
                                  isObscureText: true,
                                ),
                                CustomButton(
                                  height: getVerticalSize(
                                    51,
                                  ),
                                  text: "Login",
                                  margin: getMargin(
                                    top: 30,
                                    right: 2,
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.center,
                                  child: Padding(
                                    padding: getPadding(
                                      top: 20,
                                    ),
                                    child: Text(
                                      "Forgot password?",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style:
                                          AppStyle.txtRobotoRegular14.copyWith(
                                        decoration: TextDecoration.underline,
                                      ),
                                    ),
                                  ),
                                ),
                                CustomButton(
                                  height: getVerticalSize(
                                    51,
                                  ),
                                  text: "Login with Facebook",
                                  margin: getMargin(
                                    top: 40,
                                    right: 2,
                                  ),
                                  variant: ButtonVariant.OutlineIndigo700b2,
                                ),
                                CustomButton(
                                  height: getVerticalSize(
                                    51,
                                  ),
                                  text: "Register new account",
                                  margin: getMargin(
                                    top: 16,
                                    right: 2,
                                  ),
                                  variant: ButtonVariant.OutlineRedA400b2,
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
        ),
      ),
    );
  }
}
