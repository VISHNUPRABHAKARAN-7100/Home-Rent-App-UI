import 'package:flutter/material.dart';
import 'package:home_rent_ui/home_screen/provider/home_screen_provider.dart';
import 'package:home_rent_ui/home_screen/view/home_screen.dart';
import 'package:home_rent_ui/house_details/provider/house_details_provider.dart';
import 'package:home_rent_ui/utils/custom_colors.dart';
import 'package:provider/provider.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  // The below code is for lock the application to portrait-up and portrait-down
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(
        textScaler: const TextScaler.linear(1.0),
      ),
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => HomeScreenProvider(),
          ),
          ChangeNotifierProvider(
            create: (context) => HouseDetailsProvider(),
          )
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: CustomColors.backgroundBg,
          ),
          home: const HomeScreen(),
        ),
      ),
    );
  }
}
