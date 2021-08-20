import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'navigation_state.dart';

class NavigationBloc extends Cubit<NavigationState> {
  NavigationBloc() : super(NavigationInitial());
}
