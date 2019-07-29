import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  
  final List<String> products;

  Products(this.products)
  {
    print('test1');
  }

  @override
  Widget build(BuildContext context) {   
    print('test2');
    return Column(
      children: products
          .map((element) => Card(
                child: Column(
                  children: <Widget>[
                    Image.asset('assets/airplane.png'),
                    Text(element)
                  ],
                ),
              ))
          .toList(),
    );
  }
}
