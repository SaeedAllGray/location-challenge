part of 'location_bloc.dart';

sealed class LocationEvent extends Equatable {
  const LocationEvent();

  @override
  List<Object> get props => [];
}

class SearchLocationEvent extends LocationEvent {
  final String input;

  const SearchLocationEvent({required this.input});

  @override
  List<Object> get props => [input];
}
