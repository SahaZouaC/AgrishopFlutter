import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LoadMapPage extends StatefulWidget {
  const LoadMapPage({super.key});

  @override
  State<LoadMapPage> createState() => _LoadMapPageState();
}

class _LoadMapPageState extends State<LoadMapPage> {
  final Completer<GoogleMapController> _mapcontroller = Completer();

  static const CameraPosition _center =
      CameraPosition(target: LatLng(45.521563, -122.677433), zoom: 14);

  final List<Marker> _marker = [];
  final List<Marker> _branch = const [
    Marker(
        markerId: MarkerId('1'),
        position: LatLng(45.521563, -122.677433),
        infoWindow: InfoWindow(title: 'testing')),
    Marker(
        markerId: MarkerId('2'),
        position: LatLng(45.521563, -122.677433),
        infoWindow: InfoWindow(title: 'testing', snippet: 'testing'))
  ];

  @override
  void initState() {
    super.initState();
    _marker.addAll(_branch);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Google Map App'),
        backgroundColor: Colors.green[700],
      ),
      body: GoogleMap(
          markers: Set<Marker>.of(_marker),
          onMapCreated: (GoogleMapController controller) {
            _mapcontroller.complete(controller);
          },
          initialCameraPosition: _center),
    );
  }
}
