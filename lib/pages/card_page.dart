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
    children: [MyStatelessWidget(), listBot(context), buildContainerCard()],
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

Widget listBot(context) {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [editar(context), iniciar(context)],
    ),
  );
}

Widget editar(context) {
  return TextButton(
    style: TextButton.styleFrom(
        backgroundColor: Color(0xff54759E),
        elevation: 15,
        shadowColor: Color(0xff5479ff)),
    child: Text(
      'EDITAR',
      style: TextStyle(
          color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
    ),
    onPressed: () {
      // Irá redirecionar para a pagina de editar o card(não ta criada ainda).
    },
  );
}

Widget iniciar(context) {
  return TextButton(
    style: TextButton.styleFrom(
        padding: EdgeInsets.all(10),
        backgroundColor: Color(0xff54759E),
        elevation: 15,
        shadowColor: Color(0xff5479ff)),
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
              'COLORS: CORES:                      '
              'BLUE: AZUL;                        ' 
              'RED: VERMELHO;                     '
              'YELLOW: AMARELO;                   '
              'GREEN: VERDE.                      ' ,
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
