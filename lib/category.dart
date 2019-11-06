import 'package:flutter/material.dart';
import 'book.dart';

class Category extends StatelessWidget {
  final String topic;
  final List<Book> bookList;

  Category(this.topic, this.bookList);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      height: 270,
      child: Column(
        children: <Widget>[
          InkWell(
            onTap: () {},
            child: Container(
              padding: EdgeInsets.all(10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    topic,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                        fontFamily: 'Roboto'),
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: Theme.of(context).primaryColor,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  child: AspectRatio(
                    aspectRatio: 1 / 2,
                    child: Container(
                      // margin: EdgeInsets.only(left:15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              width: 120,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  image: DecorationImage(
                                      image: AssetImage(bookList[index].image),
                                      fit: BoxFit.cover)),
                              child: Stack(
                                alignment: AlignmentDirectional.topEnd,
                                children: <Widget>[
                                  IconButton(
                                    padding: EdgeInsets.only(top: 5),
                                    alignment: AlignmentDirectional.topEnd,
                                    icon: Icon(Icons.more_vert,
                                        color: Colors.white),
                                    onPressed: () =>
                                        eBookActions(context, bookList[index]),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 15),
                          Text(
                            bookList[index].name,
                            overflow: TextOverflow.ellipsis,
                          ),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text('${bookList[index].price} грн.'),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              itemCount: bookList.length,
            ),
          ),
        ],
      ),
    );
  }

  void eBookActions(BuildContext ctx, Book book) {
    showModalBottomSheet(
        context: ctx,
    
        builder: (_) {
          return Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 2,
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
                  leading: Icon(Icons.book),
                  title: Text('Подробнее об электронной книге'),
                  onTap: () {},
                ),
                Expanded(
                  child: SizedBox(),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        fit: FlexFit.tight,
                        child: Container(
                          child: OutlineButton(
                            child: Text(
                              'Фрагмент',
                              style: TextStyle(color: Theme.of(ctx).primaryColor),
                            ),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4.0)),
                            onPressed: () {},
                          ),
                        ),
                      ),
                      SizedBox(width: 10,),
                      Flexible(
                        flex: 2,
                        fit: FlexFit.tight,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(4.0)),
                          color: Theme.of(ctx).primaryColor,
                          child: Text(
                            'Купить за ${book.price} грн.',
                            style: TextStyle(color: Colors.white),
                          ),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        });
  }
}
