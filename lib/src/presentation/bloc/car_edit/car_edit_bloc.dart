import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'car_edit_event.dart';
part 'car_edit_state.dart';

class CarEditBloc extends Bloc<CarEditEvent, CarEditState> {
  CarEditBloc() : super(CarEditInitial()) {
    on<CarEditEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
