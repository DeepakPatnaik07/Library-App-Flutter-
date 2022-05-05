import 'dart:convert';

import 'package:endgame/widgets/vertical_book_card.dart';
import 'package:flutter/material.dart';

import 'package:rxdart/rxdart.dart';
import 'package:http/http.dart' as http;

import '../../modals/book_model.dart';
import 'package:lottie/lottie.dart';

class SearchPage extends StatefulWidget {
  const SearchPage({Key? key}) : super(key: key);

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  TextEditingController textEditingController = TextEditingController();
  List<Book> bookList = [];
  final subject = PublishSubject<String>();
  bool isLoading = false;

  void clearList() {
    setState(() {
      bookList.clear();
    });
  }

  void onError(dynamic d) {
    setState(() {
      isLoading = false;
    });
  }

  void textChanged(String text) {
    if (text.isEmpty) {
      setState(() {
        isLoading = false;
      });
      clearList();
      return;
    }
    setState(() {
      isLoading = true;
    });
    clearList();
    http
        .get(Uri.parse("https://www.googleapis.com/books/v1/volumes?q=$text"))
        .then((response) => response.body)
        .then(json.decode)
        .then((map) => map["items"])
        .then((list) {
          list.forEach(addBook);
        })
        .catchError(onError)
        .then((e) {
          setState(() {
            isLoading = false;
          });
        });
  }

  void addBook(dynamic book) {
    setState(() {
      bookList.add(Book(
          bookTitle: book["volumeInfo"]["title"],
          imageLink: book["volumeInfo"]["imageLinks"]["smallThumbnail"],
          url: book["selfLink"],
          bookAuthor: (book['volumeInfo']['authors'] as List).join(" ,"),
          bookDescription: book["volumeInfo"]["title"]));
    });
  }

  @override
  void initState() {
    super.initState();
    subject.stream
        .debounce((_) => TimerStream(true, const Duration(milliseconds: 600)))
        .listen(textChanged);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 10, right: 10, top: 60),
        color: Theme.of(context).backgroundColor,
        child: Column(children: [
          TextField(
            onChanged: (string) => (subject.add(string)),
            controller: textEditingController,
            cursorColor: Theme.of(context).bottomAppBarColor,
            decoration: InputDecoration(
                border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(50)),
                suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                ),
                suffixIconColor: Colors.grey,
                filled: true,
                fillColor: const Color(0xffF9F3EE),
                hintText: "Titles,author,or topics",
                hintStyle: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Robotto',
                    color: Colors.grey),
                prefixIcon: IconButton(
                  icon: const Icon(
                    Icons.cancel,
                    color: Colors.grey,
                  ),
                  onPressed: () {
                    textEditingController.clear();
                  },
                ),
                focusColor: Theme.of(context).bottomAppBarColor,
                prefixIconColor: Colors.grey),
          ),
          isLoading
              ? const CircularProgressIndicator(
                  color: Color(0xffD9AA63),
                )
              : Container(),
          Expanded(
              child: ListView.builder(
                  padding: const EdgeInsets.all(8.0),
                  itemCount: bookList.length,
                  itemBuilder: (BuildContext context, int index) {
                    return VerticalBookCard(
                        imageLink: bookList[index].imageLink,
                        bookTitle: bookList[index].bookTitle,
                        bookAuthor: bookList[index].bookAuthor,
                        bookDescription: bookList[index].bookDescription);
                  }))
        ]));
  }
}
