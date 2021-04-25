import 'package:devquiz/shared/models/question_model.dart';

enum Level {
  easy,
  average,
  hard,
  expert,
}

class QuizModel {
  final String title;
  final List<QuestionModel> questions;
  final int questionsAnswered;
  final String image;
  final Level level;

  QuizModel({
    required this.title,
    required this.questions,
    this.questionsAnswered = 0,
    required this.image,
    required this.level,
  });
}
