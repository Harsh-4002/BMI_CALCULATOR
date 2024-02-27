import 'dart:math';

class CalculateBmi {
  final int height;
  final int weight;
  late double _bmi;

  CalculateBmi(this.height, this.weight);

  String calculateBmi() {
    //formula bmi= weight/ height in m ka square

    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if(_bmi>=25) {
      return 'Overweight';
    }
    else if(_bmi >18.5){
      return 'Normal';
    }
    else{
      return 'Underweight';
    }
  }
  String getInterpretation(){
    if(_bmi>=25) {
      return 'You have higher than normal body weight.Try to  move more  and do exercise';
    }
    else if(_bmi >18.5){
      return 'Well done !Your body weight is good...';
    }
    else{
      return 'Eat  healthy food more and do little bit workouts also';
    }

  }
}
