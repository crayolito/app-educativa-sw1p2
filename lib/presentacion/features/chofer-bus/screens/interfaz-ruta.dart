import 'package:app_p2sw1/config/constants/constantes.dart';
import 'package:app_p2sw1/presentacion/blocs/location/location_bloc.dart';
import 'package:app_p2sw1/presentacion/blocs/map/map_bloc.dart';
import 'package:app_p2sw1/presentacion/features/chofer-bus/screens/components/geo-navigator.dart';
import 'package:app_p2sw1/presentacion/features/chofer-bus/screens/map-loading-screen.dart';
import 'package:app_p2sw1/presentacion/features/chofer-bus/widgets/map-view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapaRutasChofer extends StatefulWidget {
  const MapaRutasChofer({super.key});

  @override
  State<MapaRutasChofer> createState() => _MapaRutasChoferState();
}

class _MapaRutasChoferState extends State<MapaRutasChofer> {
  late LocationBloc locationBloc;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    locationBloc = BlocProvider.of<LocationBloc>(context);
    locationBloc.startFollowingUser();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    locationBloc.stopFolowwingUser();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    LatLng? initLocation;

    return BlocBuilder<LocationBloc, LocationState>(
      builder: (context, locationState) {
        if (locationState.lastKnownLocation == null) {
          return const MapLoading();
        }
        initLocation = locationState.lastKnownLocation;
        return Scaffold(
          body: Stack(
            children: [
              BlocBuilder<MapBloc, MapState>(
                builder: (context, mapState) {
                  return MapViewCustom(
                    initialLocation: initLocation!,
                    polygons: mapState.polygons.values.toSet(),
                    markers: mapState.markers.values.toSet(),
                    polylines: mapState.polylines.values.toSet(),
                  );
                },
              ),
              const GeoNavigationBar(),
              Positioned(
                  top: size.height * 0.92,
                  left: size.width * 0.3,
                  child: const FinallyRute()),
            ],
          ),
        );
      },
    );
  }
}

class FinallyRute extends StatelessWidget {
  const FinallyRute({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final decoration = BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color(0xffa58e74).withOpacity(0.7),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.2),
            blurRadius: 10,
            spreadRadius: 5,
            offset: const Offset(0, 5),
          )
        ]);
    return GestureDetector(
      onTap: () {},
      child: Container(
        alignment: Alignment.center,
        height: size.height * 0.07,
        width: size.width * 0.4,
        decoration: decoration,
        child: Text(
          "Finalizar Ruta",
          style: GoogleFonts.anta(
            fontSize: 20,
            color: const Color(0xff424530),
            fontWeight: FontWeight.bold,
            shadows: shadowPPN2,
          ),
        ),
      ),
    );
  }
}
