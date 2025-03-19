part of 'greeting_cubit.dart';

@immutable
sealed class GreetingState {}

final class GreetingInitial extends GreetingState {
  final String message = 'Bem vindo';
}

final class GreetingSecondTime extends GreetingState {
  final String message;

  GreetingSecondTime(this.message);
}

final class GreetingThirdTime extends GreetingState {
  final String message;

  GreetingThirdTime(this.message);
}

final class GreetingThereAfter extends GreetingState {
  final String message;

  GreetingThereAfter(this.message);
}
