import 'package:flutter/material.dart';
import 'package:info_casas_clone/theme/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Info Casas Clone',
      theme: appTheme,
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("InfoCasas"),
      ),
      body: Container(
        color: Colors.white,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Column(
              children: <Widget>[
                Container(
                  height: 70.0,
                  alignment: Alignment.center,
                  child: Text(
                    "Iniciar Sesión",
                    style: TextStyle(
                      fontSize: 20,
                      color: textColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Form(
                  autovalidate: false,
                  child: Column(
                    children: <Widget>[
                      TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        textInputAction: TextInputAction.next,
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: textColor),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: textColor),
                          ),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(color: textColor),
                          ),
                          hintText: 'Email',
                        ),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        obscureText: true,
                        textInputAction: TextInputAction.done,
                        decoration: InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: textColor),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: textColor),
                          ),
                          border: UnderlineInputBorder(
                            borderSide: BorderSide(color: textColor),
                          ),
                          hintText: 'Password',
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  alignment: Alignment.centerRight,
                  height: 30,
                  child: InkWell(
                    onTap: () {},
                    child: Text(
                      "olvidé mi contraseña",
                      style: TextStyle(
                        color: textColor,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Container(
                  height: 45,
                  width: double.infinity,
                  child: RaisedButton(
                    child: Text(
                      "INGRESAR",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                      ),
                    ),
                    color: textColor,
                    onPressed: () {},
                  ),
                ),
                SizedBox(height: 30),
                Divider(color: Colors.black),
                SizedBox(height: 30),
                Text(
                  "o ingresar con",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 17, color: Colors.grey[500]),
                ),
                SizedBox(height: 15),
                Card(
                  elevation: 5,
                  color: fbColor,
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      height: 40,
                      width: double.infinity,
                      child: Row(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            alignment: Alignment.centerLeft,
                            width: 40,
                            child: Icon(
                              Icons.face,
                              color: Colors.white,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "Ingresar con Facebook",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                Card(
                  elevation: 5,
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      height: 40,
                      width: double.infinity,
                      child: Row(
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            alignment: Alignment.centerLeft,
                            width: 40,
                            child: Icon(
                              Icons.group_work,
                              color: Colors.blue,
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "Ingresar con Google",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.grey[700],
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      "Aún no tienes cuenta ?",
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 17,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      "Registrate",
                      style: TextStyle(
                        fontSize: 17,
                        color: textColor,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                SizedBox(height: 25),
                InkWell(
                  onTap: () {},
                  child: Text(
                    "Omitir",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 17),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
