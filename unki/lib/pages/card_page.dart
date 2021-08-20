import 'package:flutter/material.dart';
import 'task_page.dart';

class CardPage extends StatelessWidget {
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Pagina do Card'),
          backgroundColor: Color(0xff54759E),
        ),
        body: _body(context),
        backgroundColor: Color(0xff202125),
      );
}

_body(context) {
  return ListView(
    children: [
      MyStatelessWidget(),
      editar(context),
      iniciar(context),
      buildContainerCard()
    ],
  );
}

MyStatelessWidget() {
  return Column(
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(15.0),
        child: Container(
          color: Colors.white,
          child: ListTile(
            title: Text(
              'Numbers',
              textScaleFactor: 1.0,
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              'To-do 10 Staks',
              textScaleFactor: 1.1,
              style: TextStyle(
                height: 2,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    ],
  );
}

Widget editar(context) {
  return TextButton(
    style: TextButton.styleFrom(
        backgroundColor: Color(0xff54759E),
        elevation: 15,
        shadowColor: Colors.green),
    child: Text(
      'Edite',
      style: TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
    ),
    onPressed: () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => MyStatelessWidget()));
    },
  );
}

Widget iniciar(context) {
  return TextButton(
    style: TextButton.styleFrom(
        backgroundColor: Color(0xff54759E),
        elevation: 15,
        shadowColor: Colors.green),
    child: Text(
      'INICIAR',
      style: TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
    ),
    onPressed: () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => TaskPage()));
    },
  );
}

Container buildContainerCard() {
  return Container(
    margin: EdgeInsets.all(16),
    padding: EdgeInsets.symmetric(vertical: 100),
    alignment: Alignment.center,
    color: Colors.white,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Colocar algumas informações aqui!",
          style: TextStyle(
            fontSize: 24,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}
