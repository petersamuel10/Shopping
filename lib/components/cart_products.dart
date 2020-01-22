import 'package:flutter/material.dart';

class CartProducts extends StatefulWidget {
  @override
  _CartProductsState createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
  var productListCart = [
    {
      "name": "Blazer",
      "picture": "assets/products/blazer1.jpeg",
      "price": 85,
      "size": "M",
      "color": "Black",
      "qty": 1
    },
    {
      "name": "Shoes",
      "picture": "assets/products/hills1.jpeg",
      "price": 50,
      "size": "34",
      "color": "Brown",
      "qty": 4
    },
    {
      "name": "Dress",
      "picture": "assets/products/dress1.jpeg",
      "price": 85,
      "size": "M",
      "color": "Red",
      "qty": 3
    },
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: productListCart.length,
        itemBuilder: (context, index) {
          return SingleCartProduct(
            productName: productListCart[index]['name'],
            productPicture: productListCart[index]['picture'],
            productPrice: productListCart[index]['price'],
            productSize: productListCart[index]['size'],
            productColor: productListCart[index]['color'],
            productQty: productListCart[index]['qty'],
          );
        });
  }
}

class SingleCartProduct extends StatelessWidget {
  final productName;
  final productPicture;
  final productPrice;
  final productSize;
  final productColor;
  final productQty;

  SingleCartProduct(
      {this.productName,
      this.productPicture,
      this.productPrice,
      this.productSize,
      this.productColor,
      this.productQty});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(
          productPicture,
          height: 90.0,
          width: 80.0,
        ),
        title: Text(productName),
        subtitle: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                //   size section  ////////////////////////////////
                Padding(
                  padding: const EdgeInsets.fromLTRB(2.0, 8.0, 2.0, 2.0),
                  child: Text('Size:'),
                ),
                Padding(
                  padding: const EdgeInsets.all(0.5),
                  child: Text(
                    productSize,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                //   color section  ////////////////////////////////
                Padding(
                  padding: const EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),
                  child: Text('Color:'),
                ),
                Padding(
                  padding: const EdgeInsets.all(0.5),
                  child: Text(
                    productColor,
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text(
                "\$${productPrice}",
                style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.red),
              ),
            ),
          ],
        ),
        trailing: FittedBox(
          fit: BoxFit.fill,
          child: Column(
            children: <Widget>[
              IconButton(icon: Icon(Icons.arrow_drop_up,color: Colors.red),iconSize: 38, onPressed: () {}),
              Text("${productQty}", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
              IconButton(icon: Icon(Icons.arrow_drop_down,color: Colors.red,),iconSize: 38, onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
