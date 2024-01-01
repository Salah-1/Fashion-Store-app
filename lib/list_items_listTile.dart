import 'package:flutter/material.dart';

void main() => runApp(const ListMyItemsListTile());

class ListMyItemsListTile extends StatelessWidget {
  const ListMyItemsListTile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        listTileTheme: const ListTileThemeData(
          textColor: Colors.white,
        ),
        useMaterial3: true,
      ),
      home: const ListTileShowMe(),
    );
  }
}

class ListTileShowMe extends StatefulWidget {
  const ListTileShowMe({super.key});

  @override
  State<ListTileShowMe> createState() => _ListTileShowMeState();
}

class _ListTileShowMeState extends State<ListTileShowMe> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Levi Shop'),
      ),
      body: ListTile(
        leading: Image.asset('images/t-shirt1.jpg'),
        title: Text('item title'),
        subtitle: Text('Subtitle'),
      ),
    );
  }
}
