import 'package:fl_componentes/screens/listview1_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Componentes en Flutter"),
        elevation: 0,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) => ListTile(
            leading: const Icon(Icons.ac_unit_rounded, color: Colors.orangeAccent),
            title: const Text('Nombre de ruta'),
            onTap: () {
              final route = MaterialPageRoute(builder: (context) => const Listview1Screen());
              Navigator.push(context, route);
            }
            ),
        separatorBuilder: (_, __) => const Divider(),
        itemCount: 100,
      ),
    );
  }
}
