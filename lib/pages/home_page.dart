import 'package:flutter/material.dart';
import 'package:unki/pages/card_page.dart';

class HomesPage extends StatelessWidget {
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Home'),
          backgroundColor: Color(0xff54759E),
        ),
        body: buildBody(context),
        backgroundColor: Color(0xff202125),
      );

  buildBody(context) {
    return ListView(
      children: [
        buildContainerPromocao(context),
      ],
    );
  }

  Container buildContainerPromocao(context) {
    return Container(
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(16),
      color: Colors.blueGrey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Learn basic of english',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Level: easy ',
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 8),
          buildElevatedButton(context)
        ],
      ),
    );
  }

  buildElevatedButton(context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 8, horizontal: 22),
          primary: Colors.lime //Color(0xFFF8FF04),
          ),
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => CardPage()));
      },
      child: Text(
        'Quero estudar!',
        style: TextStyle(
          fontSize: 18,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
