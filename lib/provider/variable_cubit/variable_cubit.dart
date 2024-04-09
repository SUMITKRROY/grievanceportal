import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'variable_state.dart';

class VariableCubit extends Cubit<VariableState> {
  VariableCubit() : super(VariableInitial());
}
