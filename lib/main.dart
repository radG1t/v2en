import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:v2en/mainpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'v2en demo',
      theme: ThemeData(
        primaryColor: Colors.white,
        colorScheme: const ColorScheme.dark(background: Colors.white),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        /*  appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Center(
            child: Text(
              'v2en login',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ), */
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(22.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                const SizedBox(
                  height: 140,
                ),
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(70)),
                  child: Image.asset(
                    'assets/zenLogo.jpg',
                    fit: BoxFit.fill,
                    width: 200,
                    height: 200,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'V2en Login',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
                const SizedBox(
                  height: 85,
                ),
                const SizedBox(
                  width: 200,
                  child: TextField(
                    decoration: InputDecoration(
                        labelText: 'Username',
                        labelStyle: TextStyle(color: Colors.white),
                        enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white))),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  width: 200,
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      labelText: 'Password',
                      //  labelStyle: TextStyle(color: Colors.white),
                    ),
                    obscureText: true,
                  ),
                ),
                const SizedBox(
                  height: 35,
                ),
                ElevatedButton(
                    style: const ButtonStyle(
                        fixedSize: MaterialStatePropertyAll(Size(20, 20))),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MainPage()),
                      );
                    },
                    child: const Icon(CupertinoIcons.check_mark))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
