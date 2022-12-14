import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';

const MAPBOX_ACCESS_TOKEN = 'pk.eyJ1IjoiYWx2YXJvMDIxIiwiYSI6ImNsYm15aHhvOTBtMG0zbm9zOW1lajRpN3MifQ.UtLzUsS2FOfYBzvEST0YgA';


class fullScreenMap extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: FlutterMap(
          options: MapOptions(
            // bounds: LatLngBounds(LatLng(58.8, 6.1), LatLng(59, 6.2)),
            boundsOptions: FitBoundsOptions(padding: EdgeInsets.all(8.0)),
            bounds: LatLngBounds(LatLng(-38.7,-72.6),LatLng(-38.7,-72.6)),
            zoom: 13.0,
          ),
          layers: [
            TileLayerOptions(
                urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                subdomains: ['a', 'b', 'c']
            ),
            MarkerLayerOptions(
              markers: [
                Marker(
                  width: 80.0,
                  height: 80.0,
                  point: LatLng(51.5, -0.09),
                  builder: (ctx) =>
                      Container(
                        child: FlutterLogo(),
                      ),
                ),
              ],
            ),
          ],
          children: <Widget>[
            TileLayerWidget(options: TileLayerOptions(
                urlTemplate: "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                subdomains: ['a', 'b', 'c']
            )),
            MarkerLayerWidget(options: MarkerLayerOptions(
              markers: [
                Marker(
                  width: 80.0,
                  height: 80.0,
                  point: LatLng(51.5, -0.09),
                  builder: (ctx) =>
                      Container(
                        child: FlutterLogo(),
                      ),
                ),
              ],
            )),
          ],
        ),
    );
  }
}