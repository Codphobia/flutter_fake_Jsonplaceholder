import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

import 'package:http/http.dart' as http;
import 'package:jsonplaceholder/models/todo.dart';
import 'package:jsonplaceholder/screens/todos_screens/todo_detail_screen.dart';


class TodoPage extends StatefulWidget {
  const TodoPage({Key? key}) : super(key: key);

  @override
  _TodoPageState createState() => _TodoPageState();
}

class _TodoPageState extends State<TodoPage> {


  Future<List<TodoModel>> getData() async {
    String url = 'https://jsonplaceholder.typicode.com/todos';
     Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var jsonData = jsonDecode(response.body);
      var jsonArray = jsonData;
      List<TodoModel> todos = [];
      for (var array  in jsonArray) {
        TodoModel todo = TodoModel.fromMap(array);
        todos.add(todo);
      }
     return todos;
    }
    return [];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text('Todo page List '),
        ),
        body:  FutureBuilder<List<TodoModel>>(
          future: getData(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.data == null) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              List<TodoModel> todos = snapshot.data!;
              return ListView.builder(
                itemCount: todos.length,
                itemBuilder: (context, index) {
                  TodoModel todo = todos[index];
                  return InkWell(
                    onTap: () {

                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return TodoDetailScreen(
                              todoModel: todo,
                            );
                          },
                        ),
                      );
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Card(
                        margin: const EdgeInsets.all(10),
                        shadowColor: Colors.blue,
                        color: Colors.red,
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(14.0),
                              child: Column(
                                children: [

                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Expanded(
                                        flex: 1,
                                        child: Text(
                                          'Id',
                                          style: TextStyle(
                                              color: Colors.white, fontSize: 20),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Text(
                                          todo.id.toString(),
                                          style: const TextStyle(
                                              color: Colors.white, fontSize: 15),
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 10,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      const Expanded(
                                        flex: 1,
                                        child: Text(
                                          'Title',
                                          style: TextStyle(
                                              color: Colors.white, fontSize: 20),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Text(
                                          todo.title.toString(),
                                          style: const TextStyle(
                                              color: Colors.white, fontSize: 15),
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
