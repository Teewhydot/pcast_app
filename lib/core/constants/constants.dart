import 'package:flutter/material.dart';
import 'package:pcast_app/routes/app_routes.dart';

onTapArrowLeft(BuildContext context) {
  Navigator.pop(context);
}

onTapSearch1(BuildContext context) {
  Navigator.pushNamed(context, AppRoutes.searchScreen);
}

onTapSearch(BuildContext context) {
  Navigator.pushNamed(context, AppRoutes.searchScreen);
}

onTapBrowse(BuildContext context) {
  Navigator.pushNamed(context, AppRoutes.browseScreen);
}
