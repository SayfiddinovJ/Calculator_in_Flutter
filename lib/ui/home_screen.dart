import 'package:calculator/cubit/calculator_cubit.dart';
import 'package:calculator/cubit/calculator_state.dart';
import 'package:calculator/ui/widgets/global_button.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF212327),
      body: BlocBuilder<CalculatorCubit, CalculatorState>(
          builder: (context, state) {
        return Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                dragStartBehavior: DragStartBehavior.down,
                reverse: true,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Flexible(
                          child: Text(
                            state.result == '' ? '' : state.text,
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w400,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Flexible(
                          child: Text(
                            state.result == '' ? '0' : state.result,
                            textAlign: TextAlign.end,
                            style: TextStyle(
                              fontSize: 48.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 35.w),
              decoration: BoxDecoration(
                color: const Color(0xFF27292E),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(24.r),
                  topRight: Radius.circular(24.r),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: 22.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GlobalButton(
                        text: 'AC',
                        btnColor: const Color(0xFFD4D4D2),
                        textColor: const Color(0xFF1C1C1C),
                        onTap: () {
                          context
                              .read<CalculatorCubit>()
                              .clearAll(state.result);
                        },
                      ),
                      GlobalButton(
                        text: 'C',
                        btnColor: const Color(0xFFD4D4D2),
                        textColor: const Color(0xFF1C1C1C),
                        onTap: () {
                          context.read<CalculatorCubit>().clear(state.result);
                        },
                      ),
                      GlobalButton(
                        text: '%',
                        btnColor: const Color(0xFFD4D4D2),
                        textColor: const Color(0xFF1C1C1C),
                        onTap: () {},
                      ),
                      GlobalButton(
                        text: '/',
                        btnColor: const Color(0xFFFF9500),
                        textColor: const Color(0xFFD4D4D2),
                        onTap: () {
                          if (state.result.endsWith('0') ||
                              state.result.endsWith('1') ||
                              state.result.endsWith('2') ||
                              state.result.endsWith('3') ||
                              state.result.endsWith('4') ||
                              state.result.endsWith('5') ||
                              state.result.endsWith('6') ||
                              state.result.endsWith('7') ||
                              state.result.endsWith('8') ||
                              state.result.endsWith('9')) {
                            context
                                .read<CalculatorCubit>()
                                .add('${state.result}/');
                          }
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 22.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GlobalButton(
                        text: '7',
                        btnColor: const Color(0xFFD4D4D2),
                        textColor: const Color(0xFF1C1C1C),
                        onTap: () {
                          context
                              .read<CalculatorCubit>()
                              .add('${state.result}7');
                        },
                      ),
                      GlobalButton(
                        text: '8',
                        btnColor: const Color(0xFFD4D4D2),
                        textColor: const Color(0xFF1C1C1C),
                        onTap: () {
                          context
                              .read<CalculatorCubit>()
                              .add('${state.result}8');
                        },
                      ),
                      GlobalButton(
                        text: '9',
                        btnColor: const Color(0xFFD4D4D2),
                        textColor: const Color(0xFF1C1C1C),
                        onTap: () {
                          context
                              .read<CalculatorCubit>()
                              .add('${state.result}9');
                        },
                      ),
                      GlobalButton(
                        text: '*',
                        btnColor: const Color(0xFFFF9500),
                        textColor: const Color(0xFFD4D4D2),
                        onTap: () {
                          if (state.result.endsWith('0') ||
                              state.result.endsWith('1') ||
                              state.result.endsWith('2') ||
                              state.result.endsWith('3') ||
                              state.result.endsWith('4') ||
                              state.result.endsWith('5') ||
                              state.result.endsWith('6') ||
                              state.result.endsWith('7') ||
                              state.result.endsWith('8') ||
                              state.result.endsWith('9')) {
                            context
                                .read<CalculatorCubit>()
                                .add('${state.result}*');
                          }
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 22.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GlobalButton(
                        text: '4',
                        btnColor: const Color(0xFFD4D4D2),
                        textColor: const Color(0xFF1C1C1C),
                        onTap: () {
                          context
                              .read<CalculatorCubit>()
                              .add('${state.result}4');
                        },
                      ),
                      GlobalButton(
                        text: '5',
                        btnColor: const Color(0xFFD4D4D2),
                        textColor: const Color(0xFF1C1C1C),
                        onTap: () {
                          context
                              .read<CalculatorCubit>()
                              .add('${state.result}5');
                        },
                      ),
                      GlobalButton(
                        text: '6',
                        btnColor: const Color(0xFFD4D4D2),
                        textColor: const Color(0xFF1C1C1C),
                        onTap: () {
                          context
                              .read<CalculatorCubit>()
                              .add('${state.result}6');
                        },
                      ),
                      GlobalButton(
                        text: '-',
                        btnColor: const Color(0xFFFF9500),
                        textColor: const Color(0xFFD4D4D2),
                        onTap: () {
                          if (state.result.endsWith('0') ||
                              state.result.endsWith('1') ||
                              state.result.endsWith('2') ||
                              state.result.endsWith('3') ||
                              state.result.endsWith('4') ||
                              state.result.endsWith('5') ||
                              state.result.endsWith('6') ||
                              state.result.endsWith('7') ||
                              state.result.endsWith('8') ||
                              state.result.endsWith('9')) {
                            context
                                .read<CalculatorCubit>()
                                .add('${state.result}-');
                          }
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 22.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GlobalButton(
                        text: '1',
                        btnColor: const Color(0xFFD4D4D2),
                        textColor: const Color(0xFF1C1C1C),
                        onTap: () {
                          context
                              .read<CalculatorCubit>()
                              .add('${state.result}1');
                        },
                      ),
                      GlobalButton(
                        text: '2',
                        btnColor: const Color(0xFFD4D4D2),
                        textColor: const Color(0xFF1C1C1C),
                        onTap: () {
                          context
                              .read<CalculatorCubit>()
                              .add('${state.result}2');
                        },
                      ),
                      GlobalButton(
                        text: '3',
                        btnColor: const Color(0xFFD4D4D2),
                        textColor: const Color(0xFF1C1C1C),
                        onTap: () {
                          context
                              .read<CalculatorCubit>()
                              .add('${state.result}3');
                        },
                      ),
                      GlobalButton(
                        text: '+',
                        btnColor: const Color(0xFFFF9500),
                        textColor: const Color(0xFFD4D4D2),
                        onTap: () {
                          if (state.result.endsWith('0') ||
                              state.result.endsWith('1') ||
                              state.result.endsWith('2') ||
                              state.result.endsWith('3') ||
                              state.result.endsWith('4') ||
                              state.result.endsWith('5') ||
                              state.result.endsWith('6') ||
                              state.result.endsWith('7') ||
                              state.result.endsWith('8') ||
                              state.result.endsWith('9')) {
                            context
                                .read<CalculatorCubit>()
                                .add('${state.result}+');
                          }
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 22.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GlobalButton(
                        text: '0',
                        btnColor: const Color(0xFFD4D4D2),
                        textColor: const Color(0xFF1C1C1C),
                        onTap: () {
                          context
                              .read<CalculatorCubit>()
                              .add('${state.result}0');
                        },
                      ),
                      GlobalButton(
                        text: '00',
                        btnColor: const Color(0xFFD4D4D2),
                        textColor: const Color(0xFF1C1C1C),
                        onTap: () {
                          context
                              .read<CalculatorCubit>()
                              .add('${state.result}00');
                        },
                      ),
                      GlobalButton(
                        text: '.',
                        btnColor: const Color(0xFFD4D4D2),
                        textColor: const Color(0xFF1C1C1C),
                        onTap: () {
                          if (state.result.endsWith('0') ||
                              state.result.endsWith('1') ||
                              state.result.endsWith('2') ||
                              state.result.endsWith('3') ||
                              state.result.endsWith('4') ||
                              state.result.endsWith('5') ||
                              state.result.endsWith('6') ||
                              state.result.endsWith('7') ||
                              state.result.endsWith('8') ||
                              state.result.endsWith('9')) {
                            if (!state.result.contains('.')) {
                              context
                                  .read<CalculatorCubit>()
                                  .add('${state.result}.');
                            }
                          }
                        },
                      ),
                      GlobalButton(
                        text: '=',
                        btnColor: const Color(0xFFFF9500),
                        textColor: const Color(0xFFD4D4D2),
                        onTap: () {
                          if (state.result.endsWith('1') ||
                              state.result.endsWith('2') ||
                              state.result.endsWith('3') ||
                              state.result.endsWith('4') ||
                              state.result.endsWith('5') ||
                              state.result.endsWith('6') ||
                              state.result.endsWith('7') ||
                              state.result.endsWith('8') ||
                              state.result.endsWith('9') ||
                              state.result.endsWith('0')) {
                            context.read<CalculatorCubit>().calculate();
                          }
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 20.h),
                  const Text('SJJB production'),
                  SizedBox(height: 12.h),
                ],
              ),
            ),
          ],
        );
      }),
    );
  }
}
