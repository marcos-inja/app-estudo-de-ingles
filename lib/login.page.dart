import 'package:unki/home.dart';
import 'date/shared_preferences_helper.dart';
//import 'pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage() : super();

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerSenha = TextEditingController();

  @override
  void initState() {
    super.initState();
    _loadData();
  }

  _loadData() async {
    SharedPreferencesHelper sharedPreferences = SharedPreferencesHelper();
    bool isLogged = await sharedPreferences.getUser();

    if (isLogged) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => HomePage(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: buildBody());
  }

  buildBody() {
    return Padding(
      padding: const EdgeInsets.all(22),
      child: Form(
        key: _formKey,
        child: ListView(
          children: [
            SizedBox(height: 54),
            Center(
              child: Text(
                'Unki',
                style: GoogleFonts.montserrat(
                  fontSize: 28,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF10397B),
                ),
              ),
            ),
            TextFormField(
              controller: controllerEmail,
              keyboardType: TextInputType.emailAddress,
              validator: (value) => emailValidator(value!),
              decoration: buildInputDecoration(
                label: 'Login',
                icon: Icons.mark_email_unread,
              ),
            ),
            SizedBox(height: 16),
            TextFormField(
              controller: controllerSenha,
              obscureText: true,
              keyboardType: TextInputType.number,
              validator: (value) => senhaValidator(value!),
              decoration: buildInputDecoration(
                label: 'Password',
                icon: Icons.no_encryption_gmailerrorred_outlined,
              ),
            ),
            SizedBox(height: 32),
            buildElevatedButton()
          ],
        ),
      ),
    );
  }

  emailValidator(String value) {
    if (value.isEmpty) {
      return 'O e-mail é obrigatório';
    }

    if (!value.contains('@') || !value.contains('.com')) {
      return 'E-mail inválido';
    }

    return null;
  }

  senhaValidator(String value) {
    if (value.isEmpty) {
      return 'A senha é obrigatória';
    }

    return null;
  }

  buildElevatedButton() {
    return ElevatedButton(
      style:
          ElevatedButton.styleFrom(primary: Color.fromARGB(255, 20, 19, 110)),
      child: buildButtonText(),
      onPressed: () {
        bool isValid = _formKey.currentState!.validate();
        if (isValid) {
          String email = controllerEmail.text;
          String senha = controllerSenha.text;

          print('$email');
          print('$senha');

          if (email == 'jonathan@gmail.com' && senha == '123456') {
            SharedPreferencesHelper sharedPreferences =
                SharedPreferencesHelper();
            sharedPreferences.setUser(true);

            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(),
              ),
            );
          } else {
            print('ERROR NO LOGIN');
          }
        }
      },
    );
  }

  buildButtonText() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16),
      child: Text(
        'Login',
        style: GoogleFonts.montserrat(
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }

  buildInputDecoration({required String label, icon}) {
    return InputDecoration(
      labelText: label,
      prefixIcon: Icon(icon),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
    );
  }
}






//Codigo antigo que estava sem o shared_preferences_helper!!!

/*
import 'package:flutter/material.dart';
import 'package:unki/home.dart';

class  LoginPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 60, left: 40, right: 40),
        color: Colors.blue,
         child: ListView(
          children: <Widget>[
            TextFormField(
              // autofocus: true,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: "USUÁRIO",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
             SizedBox(
              height: 10,
            ),
             TextFormField(
              // autofocus: true,
              keyboardType: TextInputType.text,
              obscureText: true,
              decoration: InputDecoration(
                labelText: "SENHA",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
          ButtonTheme(
                height: 60.0,
                child: RaisedButton(
                  onPressed: () => { Navigator.push( context, MaterialPageRoute(builder: (context) => HomePage()))},
                  shape: new RoundedRectangleBorder(borderRadius:
                   new BorderRadius.circular(30.0)),
                  
                  child: Text(
                    "LOGIN",
                    style: TextStyle(color: Colors.white, fontSize: 30),
                  ), //Text
                  color:Colors.red,
                ),//RaisedButton
              ),
             
          ]
      )
    )
    );
  }
}
*/
