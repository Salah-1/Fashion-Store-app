import 'package:flutter/material.dart';
import 'constants.dart';

//3 Rows, each Row has 2 Columns. Each column has Image, text,text
// text1= description, text2=category, text3= price

void main() => runApp(const ListMyItemsRowsFirst());

class ListMyItemsRowsFirst extends StatelessWidget {
  const ListMyItemsRowsFirst({super.key});

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
      body: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        //crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Expanded(
                child: ListingWidget(
                  theTitle: 'Black stylish T-shirt',
                  thePrice: '\$16',
                  imageNumber: 1,
                ),
              ),
              Expanded(
                child: ListingWidget(
                  theTitle: 'Fashionable red, T-shirt',
                  thePrice: '\$18',
                  imageNumber: 3,
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: ListingWidget(
                  theTitle: 'Plain, twin, T-shirts',
                  thePrice: '\$17',
                  imageNumber: 2,
                ),
              ),
              Expanded(
                child: ListingWidget(
                  theTitle: 'White, long sleeve, Shirt',
                  thePrice: '\$22',
                  imageNumber: 4,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class ListingWidget extends StatelessWidget {
  ListingWidget(
      {required this.theTitle, required this.thePrice, this.imageNumber = 1});

  final String theTitle;

  //final String theSubTitle;
  final String thePrice;
  int imageNumber = 1; // set the first image
  //final Widget? cardChild;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        //mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Image(
            image: AssetImage('images/t-shirt$imageNumber.jpg'),
            width: 160.0,
            height: 160.0,
            fit: BoxFit.cover,
          ),
          Text(
            theTitle,
            style: KLabelTextStyle2,
          ),
          Text(
            thePrice,
            style: KNumberTextStyle,
          ),
          // Icon(Icons.star),
        ],
      ),
    );
  }
}
