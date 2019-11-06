import 'package:flutter/material.dart';
import 'package:playmarket_books/category.dart';
import 'book.dart';

class CategoriesStack extends StatelessWidget {
  final List<Book> whishes = [
    Book(
        id: 13,
        name: 'Падение дома Эшер',
        author: 'По Эдгар Аллан',
        image: 'assets/images/po.jpg',
        price: 7.56),
    Book(
        id: 12,
        name: 'Objective thinking',
        author: 'Дэвид Уест',
        image: 'assets/images/objective.jpg',
        price: 414.43),
    Book(
        id: 4,
        name: 'Атлант расправил плечи',
        author: 'Айн Рэнд',
        image: 'assets/images/atlant.jpg',
        price: 146.47),
  ];
  final List<Book> topSales = [
    Book(
        id: 14,
        name: 'Преступление и наказание',
        author: 'Федор Достоевский',
        image: 'assets/images/punishment.jpg',
        price: 10.18),
    Book(
        id: 15,
        name: 'Ромео и Джульетта',
        author: 'Уильям Шекспир',
        image: 'assets/images/romeo.jpg',
        price: 2.04),
    Book(
        id: 16,
        name: 'Приключения Шерлока Холмса',
        author: 'Артур Конан Дойл',
        image: 'assets/images/Sherlock.jpg',
        price: 142.54),
    Book(
        id: 3,
        name: '451 градус по Фаренгейту',
        author: 'Рэй Брэдбери',
        image: 'assets/images/451f.jpg',
        price: 61.81),
  ];
  final List<Book> newBooks = [
    Book(
        id: 2,
        name: 'Драйв',
        author: 'Джеймс Саллис',
        image: 'assets/images/drive.jpg',
        price: 125.34),
    Book(
        id: 6,
        name: 'Исчезнувшая',
        author: 'Джиллиан Флинн',
        image: 'assets/images/gonegirl.jpg',
        price: 197.43),
    Book(
        id: 7,
        name: 'Краткая история времени. От Большого Взрыва до черных дыр',
        author: 'Стивен Хокинг',
        image: 'assets/images/hoking.jpg',
        price: 51.61),
    Book(
        id: 11,
        name: 'Марсианские хроники',
        author: 'Рэй Брэдбери',
        image: 'assets/images/martian.jpg',
        price: 14.12),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Category('Ваш список желаний', whishes),
        Category('Топ продаж', topSales),
        Category('Новые поступления', newBooks),
      ],
    );
  }
}