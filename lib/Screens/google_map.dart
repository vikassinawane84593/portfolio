import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Myloc extends StatelessWidget {
  const Myloc({super.key});

  static const LatLng jalna = LatLng(19.8347, 75.8816);


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: GoogleMap(
        initialCameraPosition: const CameraPosition(
          target: jalna,
          zoom: 14,
        ),

        markers: {
          const Marker(
            markerId: MarkerId("jalna_marker"),
            position: jalna,
            infoWindow: InfoWindow(
              title: "Jalna",
              snippet: "Maharashtra",
            ),
          ),
        },
      ),
    );
  }
}
//updated