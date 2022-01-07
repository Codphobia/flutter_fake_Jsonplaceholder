import 'package:flutter/material.dart';
import 'package:jsonplaceholder/models/comment.dart';

class CommentDetailScreen extends StatefulWidget {
  Comment commentent;

  CommentDetailScreen({Key? key, required this.commentent}) : super(key: key);

  @override
  _CommentDetailScreenState createState() => _CommentDetailScreenState();
}

class _CommentDetailScreenState extends State<CommentDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: const Text('Comment Detail Screen'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Card(
              color: Colors.indigo,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(50.0),
                    child: Column(
                      children: [

                        Row(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            const Expanded( flex: 1,
                              child: Text('PostId',
                                style:  TextStyle(color: Colors.white, fontSize: 20),),
                            ),

                            Expanded(flex: 2,
                              child: Text(
                                widget.commentent.postId.toString(),
                                  style: const TextStyle(color: Colors.white,),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            const Expanded(
                              flex: 1,
                              child: Text('Id',
                                style:   TextStyle(color: Colors.white, fontSize: 20),),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                widget.commentent.id.toString(),
                                  style: const TextStyle(color: Colors.white, ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            const Expanded(flex: 1, child: Text('Name',
                              style:   TextStyle(color: Colors.white, fontSize: 20),)),
                            Expanded(
                              flex: 2,
                              child: Text(
                                widget.commentent.name.toString(),
                                  style: const TextStyle(color: Colors.white, ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            const Expanded(
                              flex: 1,
                              child: Text('Email',
                                style:  TextStyle(color: Colors.white, fontSize: 20),),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(widget.commentent.email,
                                style: const TextStyle(color: Colors.white,),),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            const Expanded(
                              flex: 1,
                              child: Text('body',
                                style:   TextStyle(color: Colors.white, fontSize: 20),),
                            ),
                            Expanded(flex: 2, child: Text(widget.commentent.body,
                              style: const TextStyle(color: Colors.white,),)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
