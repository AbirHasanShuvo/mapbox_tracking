import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:ju_bus_tracking/screens/helpers/shared_prefs.dart';

class RestaurantMap extends StatefulWidget {
  const RestaurantMap({super.key});

  @override
  State<RestaurantMap> createState() => _RestaurantMapState();
}

class _RestaurantMapState extends State<RestaurantMap> {

  LatLng latlng = getLatLngFromSharedPrefs();


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text('${latlng.latitude} ${latlng.longitude}'),),
          
          ElevatedButton(onPressed: (){
            debugPrint('${latlng.latitude} ${latlng.longitude}');
          }, child: Text('click'))
        ],
      ),
    );
  }
}
