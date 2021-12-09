import 'package:flutter/material.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Calculadora'),
        ),
        body: Align(
          alignment: Alignment.centerLeft,
          child: FirstPage(),
        ),
      ),
    );
  }
}

//Main page
class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          child: Center(
            child: Column(
              children: <Widget>[
                Container(
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(right: 20, top: 20),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ImcPage()),
                              );
                            },
                            child: Text('IMC'),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FatPercentPage()),
                              );
                            },
                            child: Text('% Gordura'),
                          ),
                        ),
                      ],
                    ),
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

//Page when IMC is selected
class ImcPage extends StatefulWidget {
  @override
  State<ImcPage> createState() => _ImcPageState();
}

class _ImcPageState extends State<ImcPage> {
  double altura = 0;

  double peso = 0;

  double? imc;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Calculadora'),
        ),
        body: Container(
          child: Center(
            child: Column(
              children: <Widget>[
                Container(
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.only(right: 20, top: 20),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ImcPage()),
                              );
                            },
                            child: Text('IMC'),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              onPrimary: Colors.blue,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => FatPercentPage()),
                              );
                            },
                            child: Text('% Gordura'),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  child: TextField(
                    onChanged: (text) {
                      altura = double.parse(text);
                      print(text);
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Sua altura',
                    ),
                  ),
                  width: 200,
                  height: 75,
                  margin: EdgeInsets.only(top: 15.0),
                ),
                Container(
                  child: TextField(
                    onChanged: (text) {
                      peso = double.parse(text);
                      print(text);
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Seu peso',
                    ),
                  ),
                  width: 200,
                  height: 75,
                ),
                Container(
                  child: ElevatedButton(
                    onPressed: () {
                      setState(() {
                        imc = peso / (altura * altura);
                      });
                    },
                    child: Text('Calcular'),
                  ),
                ),
                if (imc != null) Text("Seu IMC é: $imc"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//Page when % gordura is selected
class FatPercentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Calculadora'),
        ),
        body: Container(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Container(
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 20, top: 20),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ImcPage()),
                                );
                              },
                              child: Text('IMC'),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 20),
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => FatPercentPage()),
                                );
                              },
                              child: Text('% Gordura'),
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                onPrimary: Colors.blue,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Sua altura',
                      ),
                    ),
                    width: 200,
                    height: 75,
                    margin: EdgeInsets.only(top: 15.0),
                  ),
                  Container(
                    child: const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Seu peso',
                      ),
                    ),
                    width: 200,
                    height: 75,
                  ),
                  Container(
                    child: const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Medida do pescoço',
                      ),
                    ),
                    width: 200,
                    height: 75,
                  ),
                  Container(
                    child: const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Medida da cintura',
                      ),
                    ),
                    width: 200,
                    height: 75,
                  ),
                  Container(
                    child: const TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Medida do quadril',
                      ),
                    ),
                    width: 200,
                    height: 75,
                  ),
                  Container(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text('Calcular'),
                    ),
                    padding: EdgeInsets.all(10.0),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
