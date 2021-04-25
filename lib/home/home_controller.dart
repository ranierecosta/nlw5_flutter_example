import 'package:devquiz/core/app_images.dart';
import 'package:devquiz/home/home_state.dart';
import 'package:devquiz/shared/models/answer_model.dart';
import 'package:devquiz/shared/models/question_model.dart';
import 'package:devquiz/shared/models/quiz_model.dart';
import 'package:devquiz/shared/models/user_model.dart';

class HomeController {
  HomeState state = HomeState.empty;

  UserModel? user;
  List<QuizModel>? quizzes;

  void getUser() {
    user = UserModel(
      name: "Ranis",
      photoUrl:
          "https://avatars.githubusercontent.com/u/44909265?s=400&u=94f381205288a659df53bb3efed82411fa703be1&v=4",
    );
  }

  void getQuizzes() {
    quizzes = [
      QuizModel(
        title: "NLW 5 Flutter",
        questionsAnswered: 1,
        questions: [
          QuestionModel(
            title: "Está gostando do Flutter?",
            answers: [
              AnswerModel(title: "Estou curtindo"),
              AnswerModel(title: "Estou gostando"),
              AnswerModel(title: "Muito bom"),
              AnswerModel(title: "Ok", isRight: true),
            ],
          ),
          QuestionModel(
            title: "Está gostando do Flutter?",
            answers: [
              AnswerModel(title: "Estou curtindo"),
              AnswerModel(title: "Estou gostando"),
              AnswerModel(title: "Muito bom"),
              AnswerModel(title: "Ok", isRight: true),
            ],
          )
        ],
        image: AppImages.blocks,
        level: Level.easy,
      )
    ];
  }
}
