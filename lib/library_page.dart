import 'package:flutter/material.dart';
import 'package:playmarket_books/myBooks_list.dart';
import 'package:playmarket_books/myBooks.dart';

class LibraryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.sort_by_alpha,color: Colors.black87,),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.search,color: Colors.black87,),
              onPressed: () {},
            ),
          ],
          backgroundColor: Colors.white,
          title: Text(
            'Библиотека',
            style: TextStyle(color: Colors.black),
          ),
          bottom: TabBar(
            unselectedLabelColor: Colors.black45,
            labelColor: Theme.of(context).primaryColor,
            indicatorColor: Theme.of(context).primaryColor,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 3,
            tabs: <Widget>[
              Tab(
                child: Text(
                  'Мои книги',
                ),
              ),
              Tab(
                child: Text(
                  'Мои книги',
                ),
              ),
            ],
          ),
        ),
        drawer: Drawer(),
        body: TabBarView(
          children: <Widget>[
            Container(
              child: MyBooksList(MyBooks.bookList),
            ),
            Padding(
              padding: const EdgeInsets.all(50),
              child: Column(
                children: <Widget>[
                  Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/bookshelf.png'),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Книги из серии',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Text(
                    'Здесь будут находиться книжные серии из раздела "Мои книги". ',
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );

    // return Scaffold(
    //   appBar: AppBar(),
    //   body: Container(
    //     child: MyBooksList(MyBooks.bookList),
    //   ),
    // );
  }
}
