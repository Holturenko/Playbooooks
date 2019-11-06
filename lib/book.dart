import 'package:flutter/material.dart';

class Book {
  final int id;
  final String name;
  final String author;
  final String image;
  final double price;

  Book({
    @required this.id,
    @required this.name,
    @required this.author,
    @required this.image,
    @required this.price,
  });
}
