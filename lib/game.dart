import 'dart:io';
import 'dart:math';

class Game{
  int answer = 0;

  Game(){
    var r = Random();
    answer = r.nextInt(100)+1;
    print('คำตอบคือ $answer');
  }

  int doGuess(int num){
    if(num>answer){
      print('$num is Too high');
      return 0;
    }else if(num<answer){
      print('$num is Too low');
      return 0;
    }else{
      stdout.write('$num is Correct. ');
      return 1;
    }
  }
}