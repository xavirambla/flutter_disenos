
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:disenos/screens/screens.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle.light);
    //SystemChrome.setSystemUIOverlayStyle( SystemUiOverlayStyle.dark);

    return   MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home_screen',
      routes: { 
        'basic_design' : ( _ ) => BasicDesignScreen(),
        'scroll_screen': ( _ )=> ScrollScreen(),
        'home_screen': ( _ )=> HomeScreen(),

      }
    );
  }
}