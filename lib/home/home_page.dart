import 'package:devquiz/challenge/widgets/quiz/quiz_widget.dart';
import 'package:devquiz/home/home_controller.dart';
import 'package:devquiz/home/widgets/appbar/app_bar_widget.dart';
import 'package:devquiz/home/widgets/level_button/level_button_widget.dart';
import 'package:devquiz/home/widgets/quiz_card/quiz_card_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();

  @override
  void initState() {
    super.initState();
    controller.getUser();
    controller.getQuizzes();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarWidget(
          user: controller.user!,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: 24,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  LevelButtonWidget(
                    label: "Easy",
                  ),
                  LevelButtonWidget(
                    label: "Average",
                  ),
                  LevelButtonWidget(
                    label: "Hard",
                  ),
                  LevelButtonWidget(
                    label: "Expert",
                  ),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Expanded(
                child: GridView.count(
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                    crossAxisCount: 2,
                    children: controller.quizzes!
                        .map((e) => QuizCardWidget(
                              title: e.title,
                              completed:
                                  "${e.questionsAnswered}/${e.questions.length}",
                              percent: e.questionsAnswered / e.questions.length,
                            ))
                        .toList()),
              )
            ],
          ),
        ));
  }
}
