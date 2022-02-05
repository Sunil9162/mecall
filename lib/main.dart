import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mecall/providers/appbar_title_provider.dart';
import 'package:mecall/providers/contacts_provider.dart';
import 'package:mecall/providers/floating_button_provider.dart';
import 'package:mecall/providers/them_provider.dart';
import 'package:mecall/theme/dark_theme.dart';
import 'package:mecall/theme/light_theme.dart';
import 'package:mecall/views/pages/contact_page.dart';
import 'package:mecall/views/pages/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeProvider()),
        ChangeNotifierProvider(create: (_) => AppBarTitleProvider()),
        ChangeNotifierProvider(create: (_) => FloatingButtonProvider()),
        ChangeNotifierProvider(create: (_) => ContactProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();

    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarIconBrightness: Brightness.dark,
        statusBarColor: Colors.transparent,
        systemNavigationBarColor: Color(0xffFBF8F1),
        systemNavigationBarIconBrightness: Brightness.dark,
        systemNavigationBarDividerColor: Colors.transparent,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (BuildContext context, themdata, Widget? child) => MaterialApp(
        themeMode: themdata.themeMode,
        theme: lightTheme(),
        darkTheme: darkTheme(),
        debugShowCheckedModeBanner: false,
        home: const HomePage(),
        routes: {
          "/home": (_) => const HomePage(),
          '/contact': (_) => const ContactsPage(),
        },
      ),
    );
  }
}


// its working fine
//lets add dependencies now
// lets add permission
// WE need to add permission to access the phone
// WE have added the permission 
// next we are going to run and check
//but before change sdk version
// we have successfully run the app
// next we will discusss in next video
// Thanks for watching
// We have left here in previous video lets start this video
// lets make home page
// we are adding routes
// we will change it to stateful widget

// let us add contact page
