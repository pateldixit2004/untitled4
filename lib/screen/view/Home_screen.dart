import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled4/screen/model/quiz_model.dart';
import 'package:untitled4/screen/provider/quiz_provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  QuizProvider? providerF;
  QuizProvider? providerT;
  QuizModel? quizModel=QuizModel();

  @override
  Widget build(BuildContext context) {
    providerF = Provider.of<QuizProvider>(context, listen: false);
    providerT = Provider.of<QuizProvider>(context, listen: true);
    List l1=[
      quizModel!.results![providerT!.i].incorrectAnswers![0],
      quizModel!.results![providerT!.i].incorrectAnswers![1],
      quizModel!.results![providerT!.i].incorrectAnswers![2],
    ];
    l1.add(quizModel!.results![providerT!.i].correctAnswer);
    l1.shuffle();

    return SafeArea(child: Scaffold(
      body: Column(

        children: [

          Container(
            height: 100,
            width: 100,
            child: Text("${quizModel?.results![providerT!.i].question}"),
          ),
          SizedBox(height: 10,),


          InkWell(
            onTap: () {
              providerF!.changeQustion();
            },
            child: Container(
              height: 100,
              width: 100,

              child: Text("${l1[0]}"),
            ),
          ),
          SizedBox(height: 10,),


          Container(
            height: 100,
            width: 100,

            child: Text("${l1[1]}"),
          ),
          SizedBox(height: 10,),


          Container(
            height: 100,
            width: 100,

            child: Text("${l1[2]}"),
          ),
          SizedBox(height: 10,),


          Container(
            height: 100,
            width: 100,

            child: Text("${l1[3]}"),
          ),



        ],
      ),
      // body: FutureBuilder(builder: (context, snapshot) {
      //   if(snapshot.hasData){
      //     QuizModel? quizModel=snapshot.data;
      //     List l1=[
      //       quizModel!.results![providerT!.i].incorrectAnswers![0],
      //       quizModel.results![providerT!.i].incorrectAnswers![1],
      //       quizModel.results![providerT!.i].incorrectAnswers![2],
      //     ];
      //     l1.add(quizModel.results![1].correctAnswer);
      //     l1.shuffle();
      //
      //     return  Column(
      //
      //             children: [
      //               Container(
      //                 height: 100,
      //                 width: 100,
      //                 child: Text("${quizModel?.results![providerT!.i].question}"),
      //               ),
      //               SizedBox(height: 10,),
      //
      //
      //               InkWell(
      //                 onTap: () {
      //                   providerF!.changeQustion();
      //                 },
      //                 child: Container(
      //                   height: 100,
      //                   width: 100,
      //
      //                   child: Text("${l1[0]}"),
      //                 ),
      //               ),
      //               SizedBox(height: 10,),
      //
      //
      //               Container(
      //                 height: 100,
      //                 width: 100,
      //
      //                 child: Text("${l1[1]}"),
      //               ),
      //               SizedBox(height: 10,),
      //
      //
      //               Container(
      //                 height: 100,
      //                 width: 100,
      //
      //                 child: Text("${l1[2]}"),
      //               ),
      //               SizedBox(height: 10,),
      //
      //
      //               Container(
      //                 height: 100,
      //                 width: 100,
      //
      //                 child: Text("${l1[3]}"),
      //               ),
      //
      //
      //
      //             ],
      //           );
      //
      //
      //
      //   }
      //   else if(snapshot.hasError)
      //     {
      //       return Text("${snapshot.error}");
      //     }
      //   return Center(child: CircularProgressIndicator());
      // },future: providerF!.takeApi()),
    ),);
  }
}
