import 'package:flutter/material.dart';
import 'products.dart';
import '../constants.dart';
class ItemCard extends StatelessWidget{
  final Product product;
  final Function press;
  const ItemCard({
    Key key,
    this.product,
    this.press,
  }) : super(key: key);
}

Widget build(BuildContext context) {
  return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
      Expanded()
  child: Container(
    padding: EdgeInsets.all(kDefaultPaddin),
    //height: 180,
    //width: 160,
    decoration: BoxDecoration(
        color: product.color,
        borderRadius: BorderRadius.circular(16)
    ),
    child: Image.asset(product.image),
  ),
  ),
  Padding(
  padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin / 4),,
  child: Text(
  product.title,
  style: TextStyle(color: kTextLightColor),
  ),
  )
  Text("\$(product.price)", style: TextStyle(fontWeight: FontWeight.bold),)
  ],
  );
}
}
