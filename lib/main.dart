import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String _title = 'Drawer en flutter';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text('Act 3 Drawer Alemán'),
            backgroundColor: const Color(0xffc139ba)),
        drawer: Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              const UserAccountsDrawerHeader(
                // <-- SEE HERE
                decoration: BoxDecoration(color: const Color(0xffc139ba)),
                accountName: Text(
                  "Alemán Cabrales Jorge 6I",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                accountEmail: Text(
                  "jorgealeman0505@gmail.com",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                currentAccountPicture: FlutterLogo(),
              ),
              /*const DrawerHeader(
                decoration: BoxDecoration(
                  color: const Color(0xffc139ba),
                ),
                child: Text('Encabezado del Drawer'),
              ),*/
              ListTile(
                leading: Icon(
                  Icons.home,
                ),
                title: const Text('Pagina 1'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.train,
                ),
                title: const Text('Página 2'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
              ListTile(
                leading: Icon(
                  Icons.abc,
                ),
                title: const Text('Página 3'),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ));
  }
}
