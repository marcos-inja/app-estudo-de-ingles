import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:unki/algo/app_text_styles.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(
        int.parse("#191920".substring(1, 7), radix: 16) + 0xFF000000,
      ),
      appBar: AppBar(
        backgroundColor: Color(
          int.parse("#141419".substring(1, 7), radix: 16) + 0xFF000000,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('INSTITUTO FEDERAL:', style: AppTextStyles.bodyWhite20),
            SizedBox(height: 10),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 300,
              child: FlutterMap(
                options: MapOptions(
                    center: LatLng(-9.744732853627774, -36.631188868383994),
                    zoom: 15),
                layers: [
                  TileLayerOptions(
                    urlTemplate:
                        "https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png",
                    subdomains: ['a', 'b', 'c'],
                    attributionBuilder: (_) => Text('Endereço do app'),
                  ),
                  MarkerLayerOptions(
                    markers: [
                      Marker(
                        width: 60,
                        height: 60,
                        point: LatLng(-9.744732853627774, -36.631188868383994),
                        builder: (ctx) => Icon(Icons.place,
                            size: 48, color: Color(0xff0077B6)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
