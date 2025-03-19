import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'greeting_state.dart';

class GreetingCubit extends Cubit<GreetingState> {
  int howManyTimes = 1;

  GreetingCubit() : super(GreetingInitial());

  Future<void> getNextGreetingState() async {
    howManyTimes++;

    if (howManyTimes == 2) {
      emit(GreetingSecondTime('É seu segundo acesso'));
    } else if (howManyTimes == 3) {
      emit(GreetingThirdTime('É seu terceiro acesso'));
    } else {
      emit(GreetingThereAfter('Bem vindo novamente'));
    }
  }

  Future<void> resetCount() async {
    howManyTimes = 1;
    emit(GreetingInitial());
  }
}
