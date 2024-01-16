import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Location {
  double? latitude;
  double? longitude;

  void getCurrentLocation() async{
    if (locationPermissionGranted) {
      try {
        print('Fetching location...');

        Position? position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.low,
        );

        print('Location: $position');

        latitude = position.latitude;
        longitude = position.longitude;
      } catch (e) {
        print('Error getting location: $e');
        // Hide loading indicator and show an error message to the user
      }
    } else {
      print('Location permission not granted.');
      // Handle the case where location permission is not granted
    }
  }
};
