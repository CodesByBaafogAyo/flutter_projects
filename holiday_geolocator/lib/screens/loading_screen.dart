import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'location_screen.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getLocation();
  }

  void getLocation() async {
    bool locationPermissionGranted = await _checkLocationPermission();
  }

  Future<bool> _checkLocationPermission() async {
    LocationPermission permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.always ||
        permission == LocationPermission.whileInUse) {
      return true; // Location permission is granted
    } else {
      // Request location permission
      permission = await Geolocator.requestPermission();

      return permission == LocationPermission.always ||
          permission == LocationPermission.whileInUse;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
