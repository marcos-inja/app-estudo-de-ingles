import 'package:flutter/material.dart';

class AddPage extends StatelessWidget {
  Widget build(BuildContext context) => Scaffold(
        body: MyHomePage(title: "ADICIONAR NOVO POST"),
      );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
    //
    //
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: buildBody(),
      resizeToAvoidBottomInset: false,
    );
  }

  buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          buildContainerS(),
          buildContainerP(),
          buildContainerR(),
          buildButtonSal(),
        ],
      ),
    );

    //return Column(
    //children: [
    //buildContainerS(),
    // buildContainerP(),
    //buildContainerR(),
    //buildButtonSal(),

    //],
    //);
  }

  buildDropdownButton() {
    var _choosenValue;
    return DropdownButton<String>(
        value: valueChoose,
        //elevation: 5,
        style: TextStyle(color: Colors.black),
        items: <String>[
          'CARD ONE',
          'CARD TWO',
          'CARD THREE',
          'CARD FOR',
        ].map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        hint: Text(
          "Please choose a langauage",
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.w600),
        ),
        onChanged: (newValue) {
          setState(() {
            valueChoose = newValue;
          });
        });
  }

  var valueChoose;
  List listItem = ["CARD ONE", "CARD TWO", "CARD THREE", "CARD FOR"];

  Container buildContainerS() {
    return Container(
      margin: EdgeInsets.all(25),
      padding: EdgeInsets.all(16),
      height: 100,
      width: 400,
      child: DropdownButton<String>(
          hint: Text('SELECIONE ALGUM CARD'),
          value: valueChoose,
          //elevation: 5,
          style: TextStyle(color: Colors.black),
          items: <String>[
            'CARD ONE',
            'CARD TWO',
            'CARD THREE',
            'CARD FOR',
          ].map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
          onChanged: (newValue) {
            setState(() {
              valueChoose = newValue;
            });
          }),
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(20)),
    );
  }

  Container buildContainerP() {
    return Container(
      margin: EdgeInsets.all(25),
      padding: EdgeInsets.all(16),
      height: 100,
      width: 400,
      child: buildwidgetTextField(),
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(20)),
    );
  }

  Container buildContainerR() {
    return Container(
      margin: EdgeInsets.all(25),
      padding: EdgeInsets.all(16),
      height: 100,
      width: 400,
      child: build1WidgetTextField(),
      decoration: BoxDecoration(
          color: Colors.blue, borderRadius: BorderRadius.circular(20)),
    );
  }

  buildButtonSal() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        primary: Color(0xff54759e),
        padding: EdgeInsets.all(16),
      ),
      child: Text(
        'SALVAR',
        style: TextStyle(color: Colors.black),
      ),
      onPressed: () {},
    );
  }

  build1WidgetTextField() {
    return TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            icon: Icon(Icons.add_task),
            hintText: 'RESPOSTA PARA A PERGUNTA'));
  }

  buildwidgetTextField() {
    return TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            icon: Icon(Icons.account_tree_rounded),
            hintText: 'PERGUNTA PARA INSERIR'));
  }

  constColor(int i) {}
}
