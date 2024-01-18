import 'package:bloc/bloc.dart';
import 'package:bloc_calculator/responsive/calculator_repo.dart';
import 'package:meta/meta.dart';

part 'calculator_bloc_event.dart';
part 'calculator_bloc_state.dart';

class CalculatorBloc extends Bloc<CalculatorEvent, CalculatorState> {
  //bloc Event yapıları kullanmak için kullanılır
  final CalculatorRepo calculatorRepo = CalculatorRepo();
  CalculatorBloc() : super(CalculatorInitial()) {
    on<CalculatorEvent>((event, emit) {
      if (event is AddEvent) {
        final result = calculatorRepo.add(num1: event.num1, num2: event.num2);
        emit(CalculatorResult(result: result));
      } else if (event is SubtractEvent) {
        final result =
            calculatorRepo.subtract(num1: event.num1, num2: event.num2);
        emit(CalculatorResult(result: result));
      } else if (event is MultiplyEvent) {
        final result =
            calculatorRepo.multiply(num1: event.num1, num2: event.num2);
        emit(CalculatorResult(result: result));
      } else if (event is DivideEvent) {
        final result =
            calculatorRepo.divide(num1: event.num1, num2: event.num2);
        emit(CalculatorResult(result: result));
      }
    });
  }
}
