part of 'calculator_bloc_bloc.dart';

abstract class CalculatorEvent {}

//Veriyi çekmek için kullanılır

class AddEvent extends CalculatorEvent {
  final num1, num2;

  AddEvent({required this.num1, required this.num2});
}

class SubtractEvent extends CalculatorEvent {
  final num1, num2;

  SubtractEvent({required this.num1, required this.num2});
}

class MultiplyEvent extends CalculatorEvent {
  final num1, num2;

  MultiplyEvent({required this.num1, required this.num2});
}

class DivideEvent extends CalculatorEvent {
  final num1, num2;

  DivideEvent({required this.num1, required this.num2});
}
