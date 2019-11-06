import 'dart:math';

import 'package:flutter/material.dart';
import 'package:icon_shadow/icon_shadow.dart';
import 'book.dart';

class MyBooksCards extends StatelessWidget {
  final List<Book> myBooks ;

  MyBooksCards(this.myBooks);
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: (MediaQuery.of(context).size.height -
              MediaQuery.of(context).padding.top) *
          0.5,
      padding: EdgeInsets.symmetric(vertical: 10),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.only(left: 30),
            padding: EdgeInsets.symmetric(vertical: 25),
            child: Card(
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: AspectRatio(
                aspectRatio: 5 / 8,
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: Colors.black45,
                        blurRadius: 10,
                        offset: Offset(0, 15),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(7),
                    image: DecorationImage(
                      image: AssetImage(myBooks[index].image),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 5, 0, 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        // IconButton(
                        //   alignment: AlignmentDirectional.,
                        //   icon: IconShadowWidget(
                        //     Icon(
                        //       Icons.more_vert,
                        //       color: Colors.white,
                        //       size: 32,
                        //     ),
                        //     shadowColor: Colors.black87,
                        //     showShadow: true,
                        //   ),
                        //   onPressed: () {},
                        // ),

                        InkWell(
                          child: Container(
                            child: IconShadowWidget(
                              Icon(
                                Icons.more_vert,
                                color: Colors.white,
                                size: 26,
                              ),
                              shadowColor: Colors.black87,
                              showShadow: true,
                            ),
                          ),
                          onTap: () {
                            myBookMore(context, myBooks[index]);
                          },
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 1,
                          ),
                        ),
                        Container(
                          // height: 35,
                          // width: 35,
                          margin: EdgeInsets.only(right: 5),
                          // decoration: BoxDecoration(
                          //     color: Color.fromARGB(200, 20, 20, 20),
                          //     borderRadius: BorderRadius.circular(50),
                          //     border: Border.all(
                          //       width: 4,
                          //       color: Color.fromARGB(200, 0, 0, 0),
                          //     )),
                          // child: Icon(
                          //   Icons.done,
                          //   color: Colors.white,
                          // ),

                          child: IconShadowWidget(
                            Icon(
                              Icons.check_circle,
                              color: Colors.white,
                            ),
                            showShadow: true,
                            shadowColor: Colors.black,
                          ),
                        ),

                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 10),
                          child: LinearProgressIndicator(
                            value: Random().nextInt(100) * 0.01,
                            valueColor:
                                AlwaysStoppedAnimation<Color>(Colors.white),
                            backgroundColor: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        },
        itemCount: myBooks.length,
      ),
    );
  }

  
  void myBookMore(BuildContext ctx, Book book) {
    showModalBottomSheet(
        context: ctx,
        builder: (_) {
          return SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      border: Border(
                        bottom: BorderSide(
                          width: 1,
                          color: Colors.grey[200],
                        ),
                      ),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: ListTile(
                      leading: Image.asset(book.image),
                      title: Text(book.name),
                      subtitle: Text('${book.author} 	• Электронная книга'),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.remove_circle_outline),
                    title: Text('Удалить с устройства'),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.delete_forever),
                    title: Text('Удалить из библиотеки'),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.done),
                    title: Text('Отметить как причитанную'),
                    onTap: () {},
                  ),
                  ListTile(
                    leading: Icon(Icons.book),
                    title: Text('Подробнее об электронной книге'),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          );
        });
  }
}
