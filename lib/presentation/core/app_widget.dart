// presentation/core/app_widget.dart
import 'package:flutter/material.dart';
import '../pages/search/search_page.dart';
import '../pages/profile/profile_page.dart';
import 'routes.dart';

class AppWidget extends StatelessWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Github DDD Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      initialRoute: Routes.search,
      routes: {
        Routes.search: (context) => const SearchPage(),
        Routes.profile: (context) {
          final username = ModalRoute.of(context)?.settings.arguments as String?;
          if (username == null) {
            return const SearchPage();
          }
          return ProfilePage(username: username);
        },
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(
          builder: (context) => const SearchPage(),
        );
      },
    );
  }
}