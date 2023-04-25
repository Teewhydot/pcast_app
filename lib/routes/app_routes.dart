import 'package:flutter/material.dart';
import 'package:pcast_app/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:pcast_app/presentation/author_screen/author_screen.dart';
import 'package:pcast_app/presentation/browse_authors_screen/browse_authors_screen.dart';
import 'package:pcast_app/presentation/browse_episodes_screen/browse_episodes_screen.dart';
import 'package:pcast_app/presentation/browse_podcasts_screen/browse_podcasts_screen.dart';
import 'package:pcast_app/presentation/browse_topics_screen/browse_topics_screen.dart';
import 'package:pcast_app/presentation/login_screen/login_screen.dart';
import 'package:pcast_app/presentation/main_screen/main_screen.dart';
import 'package:pcast_app/presentation/podcast_screen/podcast_screen.dart';
import 'package:pcast_app/presentation/search_screen/search_screen.dart';
import 'package:pcast_app/presentation/topic_screen/topic_screen.dart';

import '../presentation/browse_categories_screen/browse_categories_screen.dart';

class AppRoutes {
  static const String browseTopicsScreen = '/browse_topics_screen';

  static const String customHomeScreen = '/custom_home_screen';

  static const String loginScreen = '/login_screen';

  static const String hamburgerMenuScreen = '/hamburger_menu_screen';

  static const String podcastScreen = '/podcast_screen';

  static const String searchScreen = '/search_screen';

  static const String browseCategoriesScreen = '/browse_categories_screen';

  static const String browseAuthorsScreen = '/browse_authors_screen';

  static const String browsePodcastsScreen = '/browse_podcasts_screen';

  static const String browseEpisodesScreen = '/browse_episodes_screen';

  static const String authorScreen = '/author_screen';

  static const String topicScreen = '/topic_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    browseTopicsScreen: (context) => BrowseTopicsScreen(),
    loginScreen: (context) => LoginScreen(),
    searchScreen: (context) => SearchScreen(),
    browseCategoriesScreen: (context) => BrowseCategoriesScreen(),
    browseAuthorsScreen: (context) => BrowseAuthorsScreen(),
    browsePodcastsScreen: (context) => BrowsePodcastsScreen(),
    browseEpisodesScreen: (context) => BrowseEpisodesScreen(),
    authorScreen: (context) => const AuthorScreen(),
    topicScreen: (context) => const TopicScreen(),
    appNavigationScreen: (context) => const AppNavigationScreen(),
    podcastScreen: (context) => const PodcastScreen(),
    customHomeScreen: (context) => const CustomHomeTranslate(),
  };
}
