import 'package:cubit_app/features/home/cubit/greeting_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<GreetingCubit, GreetingState, String>(
      selector: (state) {
        if (state is GreetingInitial) {
          return state.message;
        } else if (state is GreetingSecondTime) {
          return state.message;
        } else if (state is GreetingThirdTime) {
          return state.message;
        } else if (state is GreetingThereAfter) {
          return state.message;
        }
        return '';
      },
      builder: (context, state) {
        return Text(state);
      },
    );
  }
}
