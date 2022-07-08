import 'package:equatable/equatable.dart';

abstract class BlocBaseEvent extends Equatable {
  /// Returns a JSON representation of the event state.
  dynamic eventToPayload();
}
