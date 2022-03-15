/*import 'package:flutter/cupertino.dart';
import 'package:sqflite/sqflite.dart';

import '../date/database/db.dart';

class ContaRepository extends ChangeNotifier {
  late Database db;

  ContaRepository() {
    _initRepository();
  }

  _initRepository() async {
    await _getGmail();
  }

  _getGmail() async {
    db = await DB.instance.Database;
    List conta = await db.query('conta', limit: 1);
    var _gmail = conta.first['gmail'];
    notifyListeners();
  }

  setGmail(double gmail) async {
    db = await DB.instance.Database;
    db.update('conta', {'gmail': gmail});
    var _gmail = gmail;
    notifyListeners();
  }
}*/
