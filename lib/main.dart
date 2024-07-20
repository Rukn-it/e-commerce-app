import 'package:flutter/material.dart';
import 'package:trailing_e_commerce_app/view%20layer/util/theme/theme_app.dart';

import 'data layer/providers/providers_list.dart';
import 'view layer/util/router/route_management.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
//  await SharedPrefsHelper.init();

  runApp(const MyApp());
}


class EntryApp extends StatelessWidget {
  const EntryApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: light_mood,
      debugShowCheckedModeBanner: false,
      initialRoute: '/',

      onGenerateRoute: RouteManager.generateRoute,
    );
  }
}
