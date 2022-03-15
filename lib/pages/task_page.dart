import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TaskPage extends StatelessWidget {
  Widget build(BuildContext context) => 
  

  Scaffold(
    
        appBar: AppBar(
          title: Text('Tarefas'),
          backgroundColor: Color(0xff54759E),
        ),
        resizeToAvoidBottomInset: false,
        body: buildBody(context),
        backgroundColor: Color(0xff202125),
      );

  buildBody(context) {
    
    return SingleChildScrollView(
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            titulo(texto: "Escreva em português:"),
            questao(palavra: "Blue"),
            Align(
              alignment: Alignment.center,
              child: botaoverificar(context),
            ),
            SizedBox(height: 16),
            Align(
              alignment: Alignment.center,
              child: botaopular(context),
            ),
          ],
        ),
      ),
    );
  }

  Container titulo({required String texto}) {
    return Container(
      padding: EdgeInsets.all(16),
      color: Colors.blue.shade400,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: Text(
              texto,
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
      margin: EdgeInsets.only(
        left: 16,
        right: 16,
        top: 40,
        bottom: 30,
      ),
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
          SizedBox(height: 8),
          TextField(
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
            decoration: InputDecoration(
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white, width: 2),
                borderRadius: BorderRadius.circular(20),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white, width: 2),
                borderRadius: BorderRadius.circular(20),
              ),
              floatingLabelBehavior: FloatingLabelBehavior.never,
              labelStyle: TextStyle(color: Colors.white),
              labelText: "Resposta",
            ),
          ),
        ],
      ),
    );
  }

  botaoverificar(context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.only(left: 120, right: 120, top: 18, bottom: 18),
        primary: Color(0xff54759E),
      ),
      onPressed: () {
        showDialog(
          context: context,
          barrierDismissible: false,
          builder: (_) => new AlertDialog(
            backgroundColor: Color(0xff202125),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10.0))),
            content: Builder(
              builder: (context) {
                return popup(context);
              },
            ),
          ),
        );
      },
      child: Text(
        'Verificar',
        style: TextStyle(
          fontSize: 18,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  botaopular(context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.only(left: 132, right: 132, top: 18, bottom: 18),
        primary: Color(0xff54759E),
      ),
      onPressed: () {
        showCupertinoDialog(
          context: context,
          barrierDismissible: false,
          builder: (_) => new CupertinoAlertDialog(
            title: Text(
              "Atenção!",
            ),
            content: Text(
              "Tem certeza que quer passar para a próxima pergunta?",
            ),
            actions: [
              CupertinoDialogAction(
                  child: Text(
                    "Ainda não",
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  }),
              CupertinoDialogAction(
                child: Text(
                  "Desisto :(",
                  style: TextStyle(color: Colors.red),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => new TaskPage()),
                  );
                },
              ),
            ],
          ),
        );
      },
      child: Text(
        'Pular',
        style: TextStyle(
          fontSize: 18,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  Container popup(context) {
    //var height = MediaQuery.of(context).size.height;´
    
    return Container(
    
      child: 
      SingleChildScrollView(
        child: Column(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: IconButton(
              icon: Icon(Icons.close, size: 30, color: Colors.white),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
          Icon(
            Icons.check,
            size: 100,
            color: Colors.blue.shade400,
          ),
          Text(
            'Parabéns!',
            style: TextStyle(
              fontSize: 28,
              color: Colors.white,
            ),
          ),
           Text(
              'Você acertou a resposta!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
              ),
            ),
          SizedBox(height: 25),
          
           ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.all(10),
              primary: Color(0xff54759E),
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => new TaskPage()),
              );
            },
            child: Text(
              'Avançar',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
          
        ],
      ),

    ),
  );
  }
}
