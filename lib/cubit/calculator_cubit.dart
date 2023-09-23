import 'package:calculator/cubit/calculator_state.dart';
import 'package:calculator/utils/functions.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:math_expressions/math_expressions.dart';

class CalculatorCubit extends Cubit<CalculatorState> {
  CalculatorCubit() : super(const CalculatorState(text: '', result: ''));

  void add(String text) {
    emit(state.copyWith(result: text, text: text));
  }

  void calculate() {
    String expression = state.result;
    num result = evaluateExpression(expression);

    emit(state.copyWith(result: roundNumber(result)));
  }

  num evaluateExpression(String expression) {
    Parser parser = Parser();
    Expression exp = parser.parse(expression);
    ContextModel cm = ContextModel();
    return exp.evaluate(EvaluationType.REAL, cm);
  }

  void clear(String text) {
    if (text.isNotEmpty) {
      text = text.substring(0, text.length - 1);
      emit(state.copyWith(result: text));
    }
  }

  void clearAll(String text) {
    text = '';
    emit(state.copyWith(result: text));
  }
}
