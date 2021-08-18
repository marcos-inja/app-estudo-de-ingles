import 'package:flutter/material.dart';

class TaskPage extends StatelessWidget {
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Tarefas'),
          backgroundColor: Color(0xff54759E),
        ),
        body: buildBody(context),
        backgroundColor: Color(0xff202125),
      );

  buildBody(context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        titulo(titulo: "Traduza para o Português!"),
        questao(palavra: "Blue"),
        /*questao(palavra: "Black"),
        questao(palavra: "White"),*/
        Align(
          alignment: Alignment.center,
          child: botaoelevado(context),
        )
      ],
      ),
    );
  }

  Container titulo({required String titulo}) {
    return Container(
      padding: EdgeInsets.all(16),
      color: Colors.blue.shade400,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              titulo,
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Container questao({required String palavra}) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.rectangle,
        color: Colors.blue.shade400,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 4,
            blurRadius: 6,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      margin: EdgeInsets.all(16),
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            palavra,
            style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Resposta',
            ),
          ),
        ],
      ),
    );
  }

  botaoelevado(context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.only(left: 120, right: 120, top: 18, bottom: 18),
        primary: Color(0xff54759E),
      ),

      onPressed: () {
        /*Navigator.push(
            context, MaterialPageRoute(builder: (context) => CardPage()));
        */

        showDialog(
            context: context,
            builder: (_) => new AlertDialog(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  content: Builder(
                    builder: (context) {
                      
                      var height = MediaQuery.of(context).size.height;
                      var width = MediaQuery.of(context).size.width;

                      return Container(
                        child: Text("ADOOOORO"),
                        height: height - 300,
                        width: width - 900,
                      );
                    },
                  ),
                ));
      },


      child: Text(
        'Enviar!',
        style: TextStyle(
          fontSize: 18,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
