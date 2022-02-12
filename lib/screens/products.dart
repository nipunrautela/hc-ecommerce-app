import 'package:flutter/material.dart';

class Product
{
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product({
    this.id,
    this.image,
    this.title,
    this.description,
    this.size,
    this.color,
    this.price,
});
}

List<Product> products=[
  product(
    id:1,
    title: "White and Black Nike running shoes",
    price: 3500,
    size: 8,
    description: "provide excellent support, comes with a herringbone pattern and a solid rubber, which adds to the comfort and support of users. ",
    image: "Assets/images/img_4.png",
    color: Color(0xFF3082AE),
  )
  product(
    id:2,
    title: "Nike Court Vision Low",
    price: 5695,
    size: 7,
    description: "Lightweight and durable Tennis shoes",
    image: "Assets/images/img_3.png",
    color: Color(0xFF3082AE),
  )
  product(
    id:3,
    title: "Satan Shoes",
    price: 7600,
    size: 8,
    description: "Extremely comfortable and flexible nike shoes ",
    image: "Assets/images/img_2.png",
    color: Color(0xFF3082AE),
  )
  product(
    id:4,
    title: "Neon Running shoes",
    price: 5500,
    size: 8,
    description: "provide excellent support, comes with a herringbone pattern and a solid rubber, which adds to the comfort and support of users. ",
    image: "Assets/images/img_1.png",
    color: Color(0xFF3082AE),
  )
  product(
    id:5,
    title: "Black air max 270 shoes",
    price: 4500,
    size: 8,
    description: "provide excellent support, comes with a herringbone pattern and a solid rubber, which adds to the comfort and support of users. ",
    image: "Assets/images/img.png",
    color: Color(0xFF3082AE),
  )
]
