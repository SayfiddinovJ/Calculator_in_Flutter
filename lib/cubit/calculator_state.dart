import 'package:equatable/equatable.dart';

class CalculatorState extends Equatable {
  final String text;
  final String result;

  const CalculatorState({required this.text, required this.result});

  CalculatorState copyWith({
    String? text,
    String? result,
  }) =>
      CalculatorState(
        text: text ?? this.text,
        result: result ?? this.result,
      );

  @override
  List<Object?> get props => [text, result];
}
