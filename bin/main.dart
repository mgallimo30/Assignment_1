import 'dart:io';

void main() {
  var weight, num;
  do {
    stdout.write('Please enter your current earth weight: ');
    try {
      weight = double.parse(stdin.readLineSync());
    }
    on Exception {
      error();
    }
  } while (weight == null);

  stdout.write('\nI have information for the following planets: \n'
      '\t1. Venus 2. Mars 3. Jupiter\n'
      '\t4. Saturn 5. Uranus 6. Neptune\n\n');
  do {
    stdout.write('Which planet are you visiting? ');
    try {
      num = int.parse(stdin.readLineSync());
    }
    on Exception {
      error();
    }
    finally {
      if (num == null || num < 1 || num > 6) {
        print('Please enter an integer between 1 and 6');
      }
    }
  } while (num == null || num < 1 || num > 6);


  switch(num) {
    case 1 : {
      weight = Venus(weight);
    }
    break;
    case 2 : {
      weight = Mars(weight);
    }
    break;
    case 3 : {
      weight = Jupiter(weight);
    }
    break;
    case 4 : {
      weight = Saturn(weight);
    }
    break;
    case 5 : {
      weight = Uranus(weight);
    }
    break;
    case 6 : {
      weight = Neptune(weight);
    }
    break;
  }
  print('\nYour weight would be $weight pounds on that planet.');
}

double Venus(double weight){
  weight *= 0.78;
  return weight;
}

double Mars(double weight){
  weight *= 0.39;
  return weight;
}

double Jupiter(double weight){
  weight *= 2.65;
  return weight;
}

double Saturn(double weight){
  weight *= 1.17;
  return weight;
}

double Uranus(double weight){
  weight *= 1.05;
  return weight;
}

double Neptune(double weight){
  weight *= 1.23;
  return weight;
}

void error(){
  print('Error. Please try again');
}