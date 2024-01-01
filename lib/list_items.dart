import 'package:flutter/material.dart';
import 'constants.dart';

//3 Rows, each Row has 2 Columns. Each column has Image, text,text,text
// text1= description, text2=category, text3= price

void main() => runApp(const ListMyItems());

class ListMyItems extends StatelessWidget {
  const ListMyItems({super.key});

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
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        //mainAxisSize: MainAxisSize.min,
        children: [
          Image(
            image: AssetImage('images/t-shirt1.jpg'),
            width: 200.0,
            height: 200.0,
          ),
          Text('Title1= caption'),
          //Spacer(),
          Text('Title3= PRICE', textAlign: TextAlign.right),
          Text('Title2= Category'),
        ],
      ),
    );
  }
}
