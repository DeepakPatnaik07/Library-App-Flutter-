import 'package:flutter/material.dart';

import 'book_detail_bottom_sheet.dart';

class VerticalBookCard extends StatelessWidget {
  const VerticalBookCard({
    Key? key,
    required this.imageLink,
    required this.bookTitle,
    required this.bookAuthor,
    required this.bookDescription
  }) : super(key: key);
  final String imageLink;
  final String bookTitle;
  final String bookAuthor;
  final String bookDescription;


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        showModalBottomSheet(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30), topRight: Radius.circular(30)),
            ),
            backgroundColor: Theme.of(context).backgroundColor,
            context: context,
            isScrollControlled: true,
            builder: (context) =>  BookDetailBottomSheet(bookAuthor: bookAuthor,imageLink: imageLink,bookTitle: bookTitle,bookDescription: bookDescription,));
      }),
      child: Card(
        color: Theme.of(context).backgroundColor,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
                leading: Image(image: NetworkImage(imageLink)),
                title: Text(
                  bookTitle,
                  style: const TextStyle(
                      color: Color(0xff46332A), fontWeight: FontWeight.w600),
                ),
                subtitle: Text(
                  bookAuthor,
                  style: const TextStyle(
                    fontFamily: 'Roboto',
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
