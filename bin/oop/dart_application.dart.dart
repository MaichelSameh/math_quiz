import 'dart:io';

class MathQuestion {
  late final String question;
  late final double answer;

  MathQuestion({
    required this.question,
    required this.answer,
  });
}

double getAnswer(String msg) {
  print("Q// $msg?");
  double answer = double.tryParse(stdin.readLineSync() ?? "0") ?? 0;
  return answer;
}

void main() {
  List<MathQuestion> questions = [
    MathQuestion(answer: 9, question: "4 + 5"),
    MathQuestion(answer: 9, question: "4 + 5"),
    MathQuestion(answer: 9, question: "4 + 5"),
    MathQuestion(answer: 9, question: "4 + 5"),
    MathQuestion(answer: 9, question: "4 + 5"),
  ];
  for (MathQuestion question in questions) {
    double answer = getAnswer(question.question);
    print("Your answer is $answer");
    if(answer == question.answer) {
      print("Correct!");
    } else {
      print("Incorrect, the answer was ${question.answer}");
    }
    print("________________________________________________________________");
  }
}
