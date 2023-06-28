import 'package:flutter/foundation.dart';
import 'package:untitled4/screen/model/quiz_model.dart';
import 'package:untitled4/utils/api_helper.dart';

class QuizProvider extends ChangeNotifier
{
  QuizModel quizModel=QuizModel();
  Future<QuizModel> takeApi()
  async {
    quizModel=await Apihelper.apihelper.getApi();

    // _questions = (responseData['results'] as List)
    //     .map((questionData) => QuizModel(
    //   question: questionData['question'],
    //   options: List<String>.from(questionData['incorrect_answers'])..add(questionData['correct_answer']),
    //   correctOption: questionData['correct_answer'],
    // ))
    //     .toList();




    return quizModel;
  }


  // List<QuizModel> _questions = [];
  // int _currentIndex = 0;
  // List<QuizModel> get questions => _questions;
  // int get currentIndex => _currentIndex;
  //

  void option()
  {
    List l1=[

    ];
  }
  int i=0;
  bool j=false;
  void changeQustion()
  {
    if(i<9)
      {
        i++;
      }
    else
      {
        j=true;
      }
    notifyListeners();
  }


}