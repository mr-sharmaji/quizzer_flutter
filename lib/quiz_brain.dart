import 'question.dart';
class QuizBrain{
  int _questionNumber = 0;
  List<Question> _questionBank =[
    Question('This app is created by Subham Sharma', true),
    Question('Java was created by Sun Micro System', true),
    Question('HTML stands for Hyper text Managing language', false),
    Question('CSS is used for styling the web pages', true),
    Question('#000000 is a HexaCode of Blue', false),
    Question(
        'Java and JavaScript are similar to each other',
        false),
    Question(
        '4 pillars of an Object oriented programming language are Abstraction, Encapsulation Inheritance and Polimorphism',
        true),
    Question(
        'Python is easy to learn and understand than most other programming languages',
        true),
    Question(
        'Flutter Application development is done using Python programming Language',
        false),
    Question('Google is the largest IT sector in the world', true),
    Question(
        'An apple a day keep a programmer away',
        false),
    Question(
        'India World Cup Jeetega ',
        true),
  ];

  void nextQuestion(){
    if(_questionNumber < (_questionBank.length-1)){
      _questionNumber++;
    } else{

    }
  }
  String getQuestionText(){
   return _questionBank[_questionNumber].questionText;
  }
  bool getQuestionAnswer(){
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {

      print('Now returning true');
      return true;

    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}