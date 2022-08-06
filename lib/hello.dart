
import 'dart:io';
import 'dart:math';

import 'game.dart';

void main(){
 var game = Game();


int result=0;
int total=0;
 do{
   stdout.write('Please guess the number betaween 1 and 100 : ');
   var input = stdin.readLineSync();
   var guess = int.tryParse(input!);

   if(guess == null) {
     //print('Please enter number only');
     continue;
   }else{
     total++;
     result = game.doGuess(guess);
   }

 }while(result !=1);
 if(result ==1){
   stdout.write('total guesses: $total');
 }

}

