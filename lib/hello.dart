
import 'dart:io';
import 'dart:math';

import 'game.dart';

void main(){
int result=0;

int conti=0;
List<int> myList = [];

  while(true){
    int total=0;
    print('╔═══════════════════════════════════════════');
    print('║            🚀guess the number🚀           ');
    print('╟───────────────────────────────────────────');
    stdout.write("║Enter a maximum number to random: ");
    var x = stdin.readLineSync();
    var s= int.tryParse(x!);
    var game = Game(maxRandom: s);
    do{
      stdout.write('║Please guess the number betaween 1 and $s : ');
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
    myList.add(total);

    if(result ==1){
      print('total guesses: $total');
      print('                 The end                   ');
      print('═══════════════════════════════════════════');
    }
    stdout.write("Play agin? (y/n): ");
    var Y ="Y";
    var y = "y";
    var n = "n";
    var N = "N";
    while(true){
      var a = stdin.readLineSync();
      var con = a.toString();
      if(con==Y || con==y){
        break;
      }else if(con==N || con==n){
        conti=1;
        break;
      }else{
        stdout.write("Play agin? (y/n): ");
        continue;
      }
    }
    if(conti==1){
      break;
    }
  }
  var len = myList.length;
  print("You've played $len game");
  for (var i = 0; i < myList.length; i++) {
    int g=i+1;
    stdout.write("🚀Game #$g: ");
    stdout.write( myList[i]);
    print(" guess");
  }



}

