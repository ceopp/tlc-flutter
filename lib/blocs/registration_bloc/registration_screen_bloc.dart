import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

@immutable
abstract class RegistrationState {
  @override
  bool operator ==(Object other) {
    return false;
  }

  @override
  int get hashCode => super.hashCode;
}

class RegistrationInitial extends RegistrationState {}

class RegistrationSuccess extends RegistrationState {}

class RegistrationLoading extends RegistrationState {}

class RegistrationBloc extends Cubit<RegistrationState> {
  RegistrationBloc() : super(RegistrationInitial());

  void addInitialEvent() => emit(RegistrationInitial());
  void addLoadingEvent() => emit(RegistrationLoading());
  void addSuccessEvent() => emit(RegistrationSuccess());

  String? _email;
  void setEmail(String value) {
    _email = value;
    emit(state);
  }

  String? _name;
  void setName(String value) {
    _name = value;
    emit(state);
  }

  String? _password;
  void setPassword(String value) {
    _password = value;
    emit(state);
  }

  String? _repeat;
  void setRepeat(String value) {
    _repeat = value;
    emit(state);
  }
}
