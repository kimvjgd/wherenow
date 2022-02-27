import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wherenow/app/ui/page/home_page.dart';
import 'package:wherenow/app/ui/page/schedule_detail_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      getPages: [
        GetPage(name: "/", page: ()=>HomePage(), transition: Transition.circularReveal),
        GetPage(name: "/detail", page: ()=>ScheduleDetailPage(), transition: Transition.circularReveal),
      ],
      home: const HomePage(),
    );
  }
}


