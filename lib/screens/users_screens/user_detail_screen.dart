
import 'package:flutter/material.dart';

import 'package:jsonplaceholder/models/user.dart';

class UserDetailScreen extends StatefulWidget {
  User user;

  UserDetailScreen({Key? key, required this.user}) : super(key: key);

  @override
  _UserDetailScreenState createState() => _UserDetailScreenState();
}

class _UserDetailScreenState extends State<UserDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent,
          title: const Text('User Detail Screen'),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 5.0,right: 5.0,top: 5.0,bottom: 0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Card(
              margin: const EdgeInsets.all(20),
              shadowColor: Colors.indigoAccent,
              color: Colors.deepPurpleAccent,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 70,
                        ),
                        const Text(
                          'Personal Info...',
                          style: TextStyle(color: Colors.white, fontSize: 30),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            const Expanded(
                              flex: 2,
                              child: Text(
                                'Id',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                widget.user.id.toString(),
                                style: const TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            const Expanded(
                              flex: 2,
                              child: Text(
                                'User Name',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                widget.user.username,
                                style: const TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            const Expanded(
                              flex: 2,
                              child: Text(
                                'Email',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                widget.user.email,
                                style: const TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            const Expanded(
                              flex: 2,
                              child: Text(
                                'Phone',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                widget.user.phone,
                                style: const TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(

                          children: [
                            const SizedBox(
                              width: 10,
                            ),
                            const Expanded(
                              flex: 2,
                              child: Text(
                                'Website',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Text(
                                widget.user.website,
                                style: const TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        const Divider(
                          color: Colors.white,
                          height: 1,
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: const Text(
                                'Address',
                                style:
                                    TextStyle(color: Colors.white, fontSize: 30),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  width: 10,
                                ),
                                const Expanded(
                                  flex: 4,
                                  child: Text(
                                    'Street',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 17),
                                  ),
                                ),
                                Expanded(
                                  flex: 5,
                                  child: Text(
                                    widget.user.address.street,
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

                              children: [
                                const SizedBox(
                                  width: 10,
                                ),
                                const Expanded(
                                  flex: 4,
                                  child: Text(
                                    'Suite',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 17),
                                  ),
                                ),
                                Expanded(
                                  flex: 5,
                                  child: Text(
                                    widget.user.address.suite,
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

                              children: [
                                const SizedBox(
                                  width: 10,
                                ),
                                const Expanded(
                                  flex: 4,
                                  child: Text(
                                    'City ',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 17),
                                  ),
                                ),
                                Expanded(
                                  flex: 5,
                                  child: Text(
                                    widget.user.address.city,
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

                              children: [
                                const SizedBox(
                                  width: 10,
                                ),
                                const Expanded(
                                  flex: 4,
                                  child: Text(
                                    'Zipcode',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 17),
                                  ),
                                ),
                                Expanded(
                                  flex: 5,
                                  child: Text(
                                    widget.user.address.zipcode,
                                    style: const TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                )
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
                                const Expanded(
                                  flex: 0,
                                  child:   Text(
                                    'Geo',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 17),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: SizedBox(
                                    height: 60,
                                    width: double.infinity,
                                    child: Column(
                                      children: [

                                        Text(
                                          widget.user.address.geo.lat
                                              .toString(),
                                          style: const TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          widget.user.address.geo.lng
                                              .toString(),
                                          style: const TextStyle(
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10.0),
                              child: Text('Company',
                                style:
                                TextStyle(color: Colors.white, fontSize: 30),),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const SizedBox(
                                  width: 10,
                                ),
                                const Expanded(
                                  flex: 4,
                                  child: Text(
                                    'Name',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 17),
                                  ),
                                ),
                                Expanded(
                                  flex: 5,
                                  child: Text(
                                    widget.user.company.name,
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

                              children: [
                                const SizedBox(
                                  width: 10,
                                ),
                                const Expanded(
                                  flex: 4,
                                  child: Text(
                                    'CatchPhrase',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 17),
                                  ),
                                ),
                                Expanded(
                                  flex: 5,
                                  child: Text(
                                    widget.user.company.catchPhrase,
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

                              children: [
                                const SizedBox(
                                  width: 10,
                                ),
                                const Expanded(
                                  flex: 4,
                                  child: Text(
                                    'Bs',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 17),
                                  ),
                                ),
                                Expanded(
                                  flex: 5,
                                  child: Text(
                                    widget.user.company.bs,
                                    style: const TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
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
        ),
      ),
    );
  }
}
