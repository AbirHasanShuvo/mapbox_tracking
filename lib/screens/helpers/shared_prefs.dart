import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:ju_bus_tracking/main.dart';

LatLng getLatLngFromSharedPrefs() {
  return LatLng(
    sharedPreferences.getDouble('latitude')!,
    sharedPreferences.getDouble('longitude')!,
  );
}
