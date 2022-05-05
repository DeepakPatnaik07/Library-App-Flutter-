import 'package:flutter/material.dart';

class BookDetailBottomSheet extends StatefulWidget {
  const BookDetailBottomSheet({Key? key,required this.imageLink,required this.bookTitle,required this.bookAuthor,required this.bookDescription}) : super(key: key);
  final String imageLink;
  final String bookTitle;
  final String bookAuthor;
  final String bookDescription;


  @override
  State<BookDetailBottomSheet> createState() => _BookDetailBottomSheetState();
}

class _BookDetailBottomSheetState extends State<BookDetailBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.85,
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          IconButton(
              alignment: Alignment.topLeft,
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.cancel,
                color: Color(0xff46332A),
                size: 30,
              )),
          Container(
            alignment: Alignment.center,
            margin: const EdgeInsets.only(left: 10, right: 10),
            width: 120,
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 20.0,
                ),
              ],
              borderRadius: BorderRadius.all(Radius.circular(50)),
            ),
            child:  Image(
              image: NetworkImage(
                  
            widget.imageLink),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 10,
            ),
            child:  Text(
              widget.bookTitle,
              style: TextStyle(
                  fontFamily: 'EBGaramond',
                  color: Color(0xff46332A),
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10),
            child:  Text(
              widget.bookAuthor,
              style: TextStyle(
                  fontFamily: 'Roboto',
                  color: Colors.grey,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(bottom: 10, left: 10, right: 10),
            child: Text(
              widget.bookDescription,
              style: TextStyle(
                fontFamily: 'Roboto',
                color: Colors.grey,
                fontSize: 20,
              ),
            ),
          ),
        ]));
  }
}
