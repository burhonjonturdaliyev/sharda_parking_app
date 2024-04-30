import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'car_register_event.dart';
part 'car_register_state.dart';

class CarRegisterBloc extends Bloc<CarRegisterEvent, CarRegisterState> {
  CarRegisterBloc() : super(CarRegisterInitial()) {
    on<CarRegisterEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
