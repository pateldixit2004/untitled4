import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled4/screen/provider/quiz_provider.dart';
import 'package:untitled4/screen/view/Home_screen.dart';

void main()
{
  runApp(
      MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => QuizProvider(),),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            '/':(context) => HomeScreen(),
          },
        ),
      )
  );
}