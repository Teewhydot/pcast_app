import 'package:flutter/material.dart';
import 'package:pcast_app/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:pcast_app/presentation/browse_screen/browse_screen.dart';
import 'package:pcast_app/presentation/login_screen/login_screen.dart';
import 'package:pcast_app/presentation/main_screen/custom_home_screen.dart';
import 'package:pcast_app/presentation/podcast_screen/podcast_screen.dart';
import 'package:pcast_app/presentation/search_screen/search_screen.dart';
import 'package:pcast_app/presentation/topic_screen/topic_screen.dart';

class AppRoutes {
  static const String browseTopicsScreen = '/browse_topics_screen';

  static const String customHomeScreen = '/custom_home_screen';

  static const String loginScreen = '/login_screen';

  static const String hamburgerMenuScreen = '/hamburger_menu_screen';

  static const String podcastScreen = '/podcast_screen';

  static const String searchScreen = '/search_screen';

  static const String browseScreen = '/browse_categories_screen';

  static const String authorScreen = '/author_screen';

  static const String topicScreen = '/topic_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    loginScreen: (context) => LoginScreen(),
    searchScreen: (context) => const SearchScreen(),
    browseScreen: (context) => const BrowseScreen(),
    topicScreen: (context) => const TopicScreen(),
    appNavigationScreen: (context) => const AppNavigationScreen(),
    podcastScreen: (context) => const PodcastScreen(),
    customHomeScreen: (context) => const CustomHomeTranslate(),
  };
}
