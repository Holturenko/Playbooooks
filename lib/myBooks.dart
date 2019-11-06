import 'package:flutter/material.dart';
import 'book.dart';

class MyBooks extends StatelessWidget {

  static List<Book> bookList = [
    Book(
        id: 1,
        name: '1984',
        author: 'Джордж Оруэлл',
        image: 'assets/images/1984.jpg',
        price: 51.04),
    Book(
        id: 5,
        name: 'Бойцовский клуб',
        author: 'Чак Паланик',
        image: 'assets/images/fight.jpg',
        price: 45.30),
    Book(
        id: 8,
        name: '11/22/63',
        author: 'Стивен Кинг',
        image: 'assets/images/king.jpg',
        price: 72.92),
    Book(
        id: 9,
        name: 'Зов Ктулху',
        author: 'Говард Лавкрафт',
        image: 'assets/images/ktulhu.jpg',
        price: 72.92),
    Book(
        id: 10,
        name: 'Макбэт',
        author: 'Уильям Шекспир',
        image: 'assets/images/Macbeth.jpg',
        price: 2.04),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}