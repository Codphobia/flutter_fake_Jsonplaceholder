
import 'package:flutter/material.dart';

import 'package:jsonplaceholder/models/gridview.dart';
import 'package:jsonplaceholder/screens/photo_screens/photos_screen.dart';
import 'package:jsonplaceholder/screens/post_screens/post_screen.dart';
import 'package:jsonplaceholder/screens/todos_screens/todos_screens.dart';
import 'package:jsonplaceholder/screens/users_screens/users_screen.dart';

import 'albums_screens/album_screen.dart';

import 'comment_screens/comment_screen.dart';

class HomePage extends StatefulWidget {

    HomePage({Key? key, }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> simpleList = [
    'post',
    'comment',
    'albums',
    'photos',
    'todos',
    'users'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Colors.green,Colors.deepPurpleAccent,Colors.redAccent,Colors.redAccent,Colors.blue, Colors.orange])),
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: const Text('{Json} Placeholder'),
            centerTitle: true,
            titleSpacing: 3,
            flexibleSpace: Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: <Color>[
                        Colors.red,
                        Colors.blue
                      ])
              ),
            ),
          ),
          body: Center(
            child: Padding(
              padding:
              const EdgeInsets.only(top: 80, right: 15, left: 15, bottom: 0),
              child: GridView.builder(

                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: simpleList.length,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return const PostPage();
                          },
                        ));
                      },
                      child: Container(
                        color: Colors.blue,
                        child: Center(
                            child: GridsView(
                              textColor: Colors.white,
                              text: simpleList[index],
                            )),
                      ),
                    );
                  } else if (index == 1) {
                    return InkWell(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) {
                              return const CommentPage();
                            },
                          ),
                        );
                      },
                      child: Container(
                        color: Colors.indigo,
                        child: Center(
                            child: GridsView(
                              textColor: Colors.white,
                              text: simpleList[index],
                            )),
                      ),
                    );
                  }
                  if (index == 2) {
                    return InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return const AlbumPage();
                          },
                        ));
                      },
                      child: Container(
                        color: Colors.deepPurple,
                        child: Center(
                            child: GridsView(
                              textColor: Colors.white,
                              text: simpleList[index],
                            )),
                      ),
                    );
                  }
                  if (index == 3) {
                    return InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return const PhotoPage();
                          },
                        ));
                      },
                      child: Container(
                        color: Colors.green,
                        child: Center(
                            child: GridsView(
                              textColor: Colors.white,
                              text: simpleList[index],
                            )),
                      ),
                    );
                  }
                  if (index == 4) {
                    return InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return const TodoPage();
                          },
                        ));
                      },
                      child: Container(
                        color: Colors.red,
                        child: Center(
                            child: GridsView(
                              textColor: Colors.white,
                              text: simpleList[index],
                            )),
                      ),
                    );
                  }
                  if (index == 5) {
                    return InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return const UsersPage();
                          },
                        ));
                      },
                      child: Container(
                        color: Colors.deepPurpleAccent,
                        child: Center(
                            child: GridsView(
                              textColor: Colors.white,
                              text: simpleList[index],
                            )),
                      ),
                    );
                  } else {
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  }
                },
              ),
            ),
          ),
        ),
      ),
    );





  }
}


