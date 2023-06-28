import 'dart:convert';

import 'package:http/http.dart' as http;

import '../screen/model/quiz_model.dart';
class Apihelper
{

  static Apihelper apihelper=Apihelper();

  Future<QuizModel> getApi()
  async {
    String link='https://opentdb.com/api.php?amount=10&category=27&difficulty=medium&type=multiple';
    var responce=await http.get(Uri.parse(link));
    var json=jsonDecode(responce.body);
    QuizModel quizModel =QuizModel.fromJson(json);
    return quizModel;
  }
}