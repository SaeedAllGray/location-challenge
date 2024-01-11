import 'package:application_challenge/src/location/data/providers/location_api.dart';
import 'package:application_challenge/src/location/model/location.dart';

class LocationRepository {
  final LocationApi api = LocationApi();

  Future<List<Location>> searchTerm(String input) async {
    final List<dynamic> rawLocations = await api.searchTerm(input);

    final List<Location> locationList =
        rawLocations.map((element) => Location.fromJson(element)).toList();

    return locationList;
  }
}
