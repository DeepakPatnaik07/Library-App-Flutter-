import 'package:endgame/widgets/horizontal_book_card.dart';

import 'package:flutter/material.dart';

import '../../widgets/vertical_book_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Theme.of(context).backgroundColor,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
                color: Theme.of(context).cardColor,
                borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30))),
            height: MediaQuery.of(context).size.height / 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  color: Theme.of(context).cardColor,
                  margin: const EdgeInsets.only(right: 15, top: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://avatars.githubusercontent.com/u/91048930?s=400&u=48c3b37c4754ffd93d6f1d5c127bda0db5e9930f&v=4'),
                        radius: 20,
                        backgroundColor: Colors.black,
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 15, top: 10, bottom: 10),
                  child: const Text(
                    'New & Trending',
                    style: TextStyle(
                        fontFamily: 'EBGaramond',
                        color: Color(0xff46332A),
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                    margin: const EdgeInsets.symmetric(vertical: 20.0),
                    height: 200.0,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        HorizontalBookCard(
                          imageLink:
                              'https://images-na.ssl-images-amazon.com/images/I/81MQxZWmXWL.jpg',
                          bookAuthor: 'EL James',
                          bookTitle: '50 shades of grey',
                          bookDescription:
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',
                        ),
                        HorizontalBookCard(
                          imageLink:
                              'https://images-na.ssl-images-amazon.com/images/I/81a4kCNuH+L.jpg',
                          bookAuthor: 'John Green',
                          bookTitle: 'The Fault in our stars',
                          bookDescription:
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',
                        ),
                        HorizontalBookCard(
                          imageLink:
                              'https://images-na.ssl-images-amazon.com/images/I/81gP4fFhsbL.jpg',
                          bookAuthor: 'JK Rowling',
                          bookTitle: 'Harry Potter',
                          bookDescription:
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',
                        ),
                        HorizontalBookCard(
                          imageLink:
                              'https://images-na.ssl-images-amazon.com/images/I/712HEn9SNwL.jpg',
                          bookAuthor: 'Chetan Bhagat',
                          bookTitle: 'Half Girlfriend',
                          bookDescription:
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',
                        ),
                        HorizontalBookCard(
                            bookAuthor: 'Chetan Bhagat',
                            bookTitle: 'Revolution 2020',
                            bookDescription:
                                'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',
                            imageLink:
                                'https://images-na.ssl-images-amazon.com/images/I/711tJ6aX-SL.jpg'),
                      ],
                    )),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.only(
                  left: 15,
                  top: 10,
                ),
                child: const Text(
                  'Recommended',
                  style: TextStyle(
                      fontFamily: 'EBGaramond',
                      color: Color(0xff46332A),
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                  margin: const EdgeInsets.symmetric(vertical: 20.0),
                  height: 200.0,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: const [
                      VerticalBookCard(
                        imageLink:
                            'https://images-na.ssl-images-amazon.com/images/I/81MQxZWmXWL.jpg',
                        bookAuthor: 'EL James',
                        bookTitle: '50 shades of grey',
                        bookDescription:
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',
                      ),
                      VerticalBookCard(
                        imageLink:
                            'https://images-na.ssl-images-amazon.com/images/I/81a4kCNuH+L.jpg',
                        bookAuthor: 'John Green',
                        bookTitle: 'The Fault in our stars',
                        bookDescription:
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',
                      ),
                      VerticalBookCard(
                        imageLink:
                            'https://images-na.ssl-images-amazon.com/images/I/81gP4fFhsbL.jpg',
                        bookAuthor: 'JK Rowling',
                        bookTitle: 'Harry Potter',
                        bookDescription:
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',
                      ),
                      VerticalBookCard(
                        imageLink:
                            'https://images-na.ssl-images-amazon.com/images/I/712HEn9SNwL.jpg',
                        bookAuthor: 'Chetan Bhagat',
                        bookTitle: 'Half Girlfriend',
                        bookDescription:
                            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',
                      ),
                      VerticalBookCard(
                          bookAuthor: 'Chetan Bhagat',
                          bookTitle: 'Revolution 2020',
                          bookDescription:
                              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum',
                          imageLink:
                              'https://images-na.ssl-images-amazon.com/images/I/711tJ6aX-SL.jpg'),
                    ],
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
