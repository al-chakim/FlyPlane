import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:plane/models/destination_model.dart';

part 'destination_state.dart';

class DestinationCubit extends Cubit<DestinationState> {
  DestinationCubit() : super(DestinationInitial());
}
