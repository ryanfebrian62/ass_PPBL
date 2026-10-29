import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LokasiPage extends StatelessWidget {
  const LokasiPage({super.key});


  static const LatLng lokasiGreenLife = LatLng(-6.914744, 107.609810);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lokasi GreenLife')),
      body: GoogleMap(
        initialCameraPosition: const CameraPosition(
          target: lokasiGreenLife,
          zoom: 15,
        ),
        markers: {
          const Marker(
            markerId: MarkerId('Bank Sampah Hijau'),
            position: lokasiGreenLife,
            infoWindow: InfoWindow(title: 'Bank Sampah Hijau'),
          ),
        },
      ),
    );
  }
}
