import 'package:endgame/widgets/book_detail_bottom_sheet.dart';
import 'package:flutter/material.dart';

class HorizontalBookCard extends StatelessWidget {
  const HorizontalBookCard({Key? key, required this.imageLink,required this.bookTitle,required this.bookAuthor,required this.bookDescription})
      : super(key: key);
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
      child: Container(
        margin: const EdgeInsets.only(left: 10, right: 10),
        decoration: const BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: 20.0,
            ),
          ],
          borderRadius: BorderRadius.all(Radius.circular(50)),
        ),
        child: Image(
          image: NetworkImage(imageLink),
        ),
      ),
    );
  }
}
