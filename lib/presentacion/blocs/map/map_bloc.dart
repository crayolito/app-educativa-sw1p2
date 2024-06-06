import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

part 'map_event.dart';
part 'map_state.dart';

class MapBloc extends Bloc<MapEvent, MapState> {
  int statusZoom = 0;
  GoogleMapController? mapController;
  CameraPosition? cameraPosition;
  MapBloc() : super(MapState()) {
    on<OnChangedStatusFollowUser>((event, emit) {
      emit(state.copyWith(followUser: event.statusFollow));
    });
    on<OnMapInitialControllerMap>(_onInitialControllerMap);
    on<OnMapControllerCamera>(_onMapControllerCamera);
    on<OnResetState>((event, emit) {
      emit(MapState());
    });
  }

  @override
  Future<void> close() {
    add(const OnResetState());
    return super.close();
  }

  Future<void> _onInitialControllerMap(
      OnMapInitialControllerMap event, Emitter<MapState> emit) async {
    mapController = event.controllerGoogleMap;
    emit(state.copyWith(
      isMapInitialized: true,
    ));
  }

  Future<void> _onMapControllerCamera(event, emit) async {
    void moveCameraMyLocation(LatLng newLocation) {
      final cameraUpdate = CameraUpdate.newLatLngZoom(newLocation, 17.5);
      mapController!.animateCamera(cameraUpdate);
    }

    void reorientMap() {
      if (mapController != null && cameraPosition != null) {
        mapController!.animateCamera(CameraUpdate.newCameraPosition(
            CameraPosition(
                target: cameraPosition!.target,
                zoom: cameraPosition!.zoom,
                bearing: 0)));
      }
    }
  }
}
