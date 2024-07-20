
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:trailing_e_commerce_app/data%20layer/controllers/product_controller.dart';
import '../../main.dart';

//هذا الكلاس عشان تعرف ال provider controller فيه 
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers:
    [
      ChangeNotifierProvider(create: (ctx)=>ProductController()),
    ]

     ,child:

     const EntryApp()
     );
  }
}