part of 'location_bloc.dart';

sealed class LocationState extends Equatable {
  const LocationState();

  @override
  List<Object> get props => [];
}

final class LocationInitial extends LocationState {}

final class LocationInProgressState extends LocationState {}

final class LocationLoadedState extends LocationState {
  final List<Location> locationList;

  const LocationLoadedState({required this.locationList});
}
