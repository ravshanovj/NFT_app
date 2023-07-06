import 'package:bloc/bloc.dart';
import 'package:nft_app/core/cubit/cubits_states.dart';

class AppCubits extends Cubit<CubitStates> {
  AppCubits() : super(InitialState()) {
    emit(WelcomeState());
  }
}
