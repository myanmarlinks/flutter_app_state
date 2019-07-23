import 'dart:async';
import 'package:bloc/bloc.dart';
import './bloc.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  @override
  int get initialState => 0;

  @override
  Stream<int> mapEventToState(CounterEvent event) async* {
    switch (event) {
      case CounterEvent.decrement:
        await Future<void>.delayed(Duration(seconds: 1));
        yield currentState - 1;
        break;
      case CounterEvent.increment:
        await Future<void>.delayed(Duration(seconds: 1));
        yield currentState + 1;
        break;
      default:
        throw Exception("unhandled event: $event");
    }
  }
}
