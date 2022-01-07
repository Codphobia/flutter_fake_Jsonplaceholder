import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:jsonplaceholder/models/comment.dart';
import 'package:jsonplaceholder/screens/comment_screens/comment_detail_screen.dart';

class CommentPage extends StatefulWidget {
  const CommentPage({Key? key}) : super(key: key);

  @override
  _CommentPageState createState() => _CommentPageState();
}

class _CommentPageState extends State<CommentPage> {
  Future<List<Comment>> getData() async {
    String url = 'https://jsonplaceholder.typicode.com/comments';
    Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var jsonData = jsonDecode(response.body);
      var jsonArray = jsonData;
      List<Comment> comments = [];
      for (var jsonComment in jsonArray) {
        Comment comment = Comment.fromMap(jsonComment);
        comments.add(comment);
      }
      return comments;
    }
    return [];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        appBar: AppBar(
          backgroundColor:  Colors.indigo,
          title: const Text('comment page List'),
        ),
        body: FutureBuilder<List<Comment>>(
          future: getData(),
          builder: (context, snapshot) {
            if (snapshot.data == null) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              List<Comment> comments = snapshot.data!;
              return ListView.builder(
                itemCount: comments.length,
                itemBuilder: (context, index) {
                  Comment comment = comments[index];
                  return Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: InkWell(
                      onTap: (){
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            return CommentDetailScreen(commentent: comment );
                          },
                        ));
                      },
                      child: Card(
                        color: Colors.indigo,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: Column(
                                children: [

                                  Row(
                                    children: [
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Expanded(flex: 1,
                                        child: Text(
                                          'PostId.',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 17,
                                          ),
                                        ),
                                      ),

                                      Expanded(flex: 2,
                                        child: Text(

                                          comment.postId.toString(),
                                          style: const TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(

                                    children: [
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Expanded(flex: 1,
                                        child: Text(
                                          ' Id.',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 17,
                                          ),
                                        ),
                                      ),

                                      Expanded(flex: 2,
                                        child: Text(
                                          comment.id.toString(),
                                          style: const TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children:   [
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Expanded(flex: 1,
                                        child: Text(
                                          'Name',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 17,
                                          ),
                                        ),
                                      ),
                                      Expanded(flex: 2,
                                        child: Text(
                                          comment.name,
                                          style: const TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),


                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    children:   [
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Expanded(flex: 1,
                                        child:  Text(
                                          'Email',
                                          style:   TextStyle(
                                            color: Colors.white,
                                            fontSize: 17,
                                          ),
                                        ),
                                      ),
                                      Expanded(flex: 2,
                                        child: Text(
                                          comment.email,
                                          style: const TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),

                                    ],
                                  ),

                                  const SizedBox(
                                    height: 10,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }
}
