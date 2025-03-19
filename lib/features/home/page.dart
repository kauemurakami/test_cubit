import 'package:cubit_app/features/home/cubit/greeting_cubit.dart';
import 'package:cubit_app/features/home/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            spacing: 16.0,
            children: [
              TextWidget(),
              TextButton(
                onPressed: () {
                  final greetingCubit = context.read<GreetingCubit>();
                  greetingCubit.getNextGreetingState();
                },
                child: Text(
                  'Proxima visita',
                ),
              ),
              TextButton(
                onPressed: () {
                  final greetingCubit = context.read<GreetingCubit>();
                  greetingCubit.resetCount();
                },
                child: Text(
                  'Resetar contador',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
