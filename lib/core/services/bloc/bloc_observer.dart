// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger_console/logger_console.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onCreate(BlocBase bloc) {
    super.onCreate(bloc);
    Console.log('Bloc created: ${bloc.runtimeType}');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    if (bloc.runtimeType.toString().contains('Cubit')) {
      Console.groupCollapsed(
        'Bloc changed: ${bloc.runtimeType}',
      );
      Console.log(
        {
          'prevState': change.currentState.toString(),
          'nextState': change.nextState.toString(),
        },
      );
      Console.groupEnd();
    }
  }

  @override
  void onTransition(Bloc bloc, Transition transition) async {
    super.onTransition(bloc, transition);
    String eventType = transition.event.runtimeType.toString();
    var currentState;
    var nextState;
    var eventPayload;

    try {
      currentState = transition.currentState.map((e) => e.toJson()).toList();
    } catch (e) {
      currentState = transition.currentState.toString();
    }
    try {
      nextState = transition.nextState.map((e) => e.toJson()).toList();
    } catch (e) {
      nextState = transition.nextState.toString();
    }
    try {
      eventPayload = transition.event.eventToPayload();
    } catch (e) {
      eventPayload = transition.event.toString();
    }

    Console.logBloc(
      currentState,
      nextState,
      BlocEvent(type: eventType, payload: eventPayload),
    );
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    Console.log('onError', error);
  }
}
