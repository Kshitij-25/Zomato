import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';

class MapScreen extends StatefulWidget {
  static const routeName = 'Map-Screen';
  @override
  _MapScreenState createState() => new _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Stack(
        children: <Widget>[
          new FlutterMap(
            options: new MapOptions(
                center: new LatLng(28.6466, 77.3396), minZoom: 10.0),
            layers: [
              new TileLayerOptions(
                urlTemplate: "https://api.tiles.mapbox.com/v4/"
                    "{id}/{z}/{x}/{y}@2x.png?access_token=pk.eyJ1Ijoia3NoaXRpanBhc3NpIiwiYSI6ImNrNzMxNGc2NjA3b2YzbG1pd3VjZ3J5bmkifQ.NaCDaeE7aIg3eL4AG_7-zg",
                additionalOptions: {
                  'accessToken':
                      'pk.eyJ1Ijoia3NoaXRpanBhc3NpIiwiYSI6ImNrNzMxNGc2NjA3b2YzbG1pd3VjZ3J5bmkifQ.NaCDaeE7aIg3eL4AG_7-zg',
                  'id': 'mapbox.streets',
                },
              ),
              new MarkerLayerOptions(
                markers: [
                  new Marker(
                    width: 45.0,
                    height: 45.0,
                    point: new LatLng(28.6466, 77.3396),
                    builder: (context) => new Container(
                      child: IconButton(
                        icon: Icon(Icons.location_on),
                        color: Colors.blue,
                        iconSize: 45.0,
                        onPressed: () {
                          print('Marker tapped');
                        },
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
          Positioned(
            // top: 220,
            // bottom: 0,
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 250,
                width: double.infinity,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Text(
                        "Select delivery location",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                        ),
                      ),
                    ),
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Text(
                        'YOUR LOCATION',
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Sector 4 Vaishali',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                          FlatButton(
                            onPressed: () {},
                            child: Text(
                              'CHANGE',
                              style: TextStyle(color: Colors.red),
                            ),
                          )
                        ],
                      ),
                    ),
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Container(
                        width: double.infinity,
                        child: RaisedButton(
                          elevation: 4,
                          color: Colors.red,
                          onPressed: () => Navigator.of(context).pop(),
                          child: Text(
                            'Confirm location & proceed',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
