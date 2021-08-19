import 'package:flutter/material.dart';
import 'package:unki/pages/task_page.dart';

class CardPage extends StatelessWidget {
  Widget build(BuildContext context) => Scaffold(
        body: Center(
          child: ElevatedButton(
            child: Text('Ver tarefas'),
            onPressed: () {
              Navigator.push(
                context,
                
                MaterialPageRoute(builder: (context) => TaskPage()),
              );
            },
          ),
        ),
      );

}
