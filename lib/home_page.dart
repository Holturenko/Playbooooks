import 'package:flutter/material.dart';
import 'package:floating_search_bar/floating_search_bar.dart';
import 'package:playmarket_books/categories_stack.dart';
import 'package:playmarket_books/myBooks_cards.dart';
import 'package:playmarket_books/myBooks.dart';

import 'myBooks.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 15.0),
        child: FloatingSearchBar(
          trailing: IconButton(
            icon: Icon(Icons.mic),
            onPressed: () {},
          ),
          drawer: Drawer(
            
            elevation: 10,
            child: ListView(
              padding: null,
              children: <Widget>[
                UserAccountsDrawerHeader(
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://www.meme-arsenal.com/memes/56c17103f12bbc996a5712add83820bb.jpg'),
                  ),
                  accountEmail: Text(
                    'myemail@mail.com',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  accountName: Text(''),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: NetworkImage(
                          'https://thewallpaper.co//wp-content/uploads/2016/10/wallpapers-hd-google-abstract-free-background-images-windows-1920x1080.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(bottom: 8),
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 1,
                        color: Colors.grey[200],
                      ),
                    ),
                  ),
                  child: ListTile(
                    title: Text(
                      'Play Market',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    leading: Icon(Icons.store),
                    onTap: () {},
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                ListTile(
                  title: Text('Настройки'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('Справка/отзыв'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('Конфиденциальность'),
                  onTap: () {},
                ),
              ],
            ),
          ),
          decoration:
              InputDecoration.collapsed(hintText: 'Поиск в Play Книгах'),
          children: <Widget>[
            MyBooksCards(MyBooks.bookList),
            CategoriesStack(),
          ],
        ),
      ),
    );
  }
}
