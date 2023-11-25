import 'package:flutter/material.dart';
import 'package:ft_solutions/view/add_record_screen.dart';
import 'package:ft_solutions/view/home_screen.dart';
import 'package:ft_solutions/view/login_screen.dart';
import 'package:ft_solutions/view/record_detail_screen.dart';
import 'package:ft_solutions/view/record_list_screen.dart';
import 'package:ft_solutions/view/signin_screen.dart';
import 'package:get/get.dart';
import 'package:hive_flutter/adapters.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
  
  await Hive.initFlutter();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        getPages: [
          GetPage(name: "/", page: () => LoginScreen()),
          GetPage(name: "/signin", page: () => SignInScreen()),
          GetPage(name: "/home", page: () => HomeScreen()),
          GetPage(name: "/recordList", page: () => RecordListScreen()),
          GetPage(name: "/recordDetail", page: () => RecordDetailScreen()),
          GetPage(name: "/addRecord", page: () => AddRecordScreen()),
        ],
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 58, 116, 183)),
        ),
        home: LoginScreen());
  }
}
