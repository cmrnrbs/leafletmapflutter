import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';
void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  title: 'Map App',
  home: Scaffold(appBar: new AppBar(title: new Text('Map Application'),),body: Stack(children: <Widget>[
    new FlutterMap(options: new MapOptions(minZoom: 10.0,center:  new LatLng(40.71,-74.00)),layers: [new TileLayerOptions(urlTemplate: 'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',subdomains: ['a','b','c']),new MarkerLayerOptions(markers: [new Marker(width: 45.0,height: 45.0,point: new LatLng(40.73, -74.00),builder: (context)=>new Container(
      child: IconButton(icon: Icon(Icons.accessibility), onPressed: () {print('Marker tapped!');}),
    ))])])
  ],),),
));
