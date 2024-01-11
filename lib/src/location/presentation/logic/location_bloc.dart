import 'dart:async';
import 'package:application_challenge/src/location/data/repository/location_repository.dart';
import 'package:application_challenge/src/location/model/location.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'location_event.dart';
part 'location_state.dart';

class LocationBloc extends Bloc<LocationEvent, LocationState> {
  final LocationRepository repository = LocationRepository();
  LocationBloc() : super(LocationInitial()) {
    on<SearchLocationEvent>(_onGetLocationEvent);
  }

  FutureOr<void> _onGetLocationEvent(
      SearchLocationEvent event, Emitter<LocationState> emit) async {
    emit(LocationInProgressState());
    final List<Location> locationList =
        await repository.searchTerm(event.input);
    print('ddddd');
    emit(LocationLoadedState(locationList: locationList));
  }
}
