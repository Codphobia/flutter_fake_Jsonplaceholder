



import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:jsonplaceholder/models/user.dart';
import 'package:jsonplaceholder/screens/users_screens/user_detail_screen.dart';

class UsersPage extends StatefulWidget {
  const UsersPage({Key? key}) : super(key: key);

  @override
  _UsersPageState createState() => _UsersPageState();
}

class _UsersPageState extends State<UsersPage> {



  Future<List<User>> getData() async {
    String url = 'https://jsonplaceholder.typicode.com/users';
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var jsonData = jsonDecode(response.body);
      var jSonArray = jsonData;

      List<User> users = [];
      for (var postArray in jSonArray) {
        User user = User.fromMap(postArray);
        users.add(user);
      }
      return users;
    }
    return [];
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent,
          title: Text('user page List'),
        ),
        body: FutureBuilder<List<User>>(
          future: getData(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.data == null) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              List<User> users= snapshot.data!;
              return ListView.builder(
                itemCount: users.length,
                itemBuilder: (context, index) {
                  User user = users[index];
                  return InkWell(
                    onTap: () {

                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return UserDetailScreen(
                               user: user,
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
                        color: Colors.deepPurpleAccent,
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
                                              color: Colors.white, fontSize: 17),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Text(
                                          user.id.toString(),
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
                                          'Name',
                                          style: TextStyle(
                                              color: Colors.white, fontSize: 17),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Text(
                                          user.name,
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
                                          'username',
                                          style: TextStyle(
                                              color: Colors.white, fontSize: 17),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Text(
                                          user.username,
                                          style: const TextStyle(
                                              color: Colors.white, ),
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
                                          'email',
                                          style: TextStyle(
                                              color: Colors.white, fontSize: 17),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Text(
                                          user.email,
                                          style: const TextStyle(
                                              color: Colors.white,  ),
                                        ),
                                      ),
                                    ],
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
        ),));
  }
}
