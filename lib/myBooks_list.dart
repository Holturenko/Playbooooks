import 'package:flutter/material.dart';
import 'book.dart';

class MyBooksList extends StatelessWidget {
  final List<Book> myBooks;

  MyBooksList(this.myBooks);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () {},
            leading: ClipRRect(
              borderRadius: BorderRadius.circular(4),
                child: Image.asset(
              myBooks[index].image,
            )),
            title: Text(myBooks[index].name),
            subtitle: Text(myBooks[index].author),
            trailing: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Icon(
                  Icons.check_circle,
                  color: Theme.of(context).primaryColor,
                ),
                IconButton(
                  icon: Icon(
                    Icons.more_vert,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          );

          // ListTile(
          //   title: Text(myBooks[index].name),
          // );
        },
        itemCount: myBooks.length,
      ),
    );
  }
}
