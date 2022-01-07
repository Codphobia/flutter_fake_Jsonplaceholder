import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

import 'package:http/http.dart' as http;
import 'package:jsonplaceholder/models/albums.dart';

import 'album_detail_screen.dart';

class AlbumPage extends StatefulWidget {
  const AlbumPage({Key? key}) : super(key: key);

  @override
  _AlbumPageState createState() => _AlbumPageState();
}

class _AlbumPageState extends State<AlbumPage> {
  Future<List<Album>> getData() async {
    String url = 'https://jsonplaceholder.typicode.com/Albums';
    Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      var jsonData = jsonDecode(response.body);
      var jsonArray = jsonData;
      List<Album> albums = [];
      for (var albumArray in jsonArray) {
        Album album = Album.fromMap(albumArray);
        albums.add(album);
      }
      return albums;
    }
    return [];
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          centerTitle: true,
          title: const Text('Album Page List'),
        ),
        body: FutureBuilder<List<Album>>(
          future: getData(),
          builder: (context, AsyncSnapshot snapshot) {
            if (snapshot.data == null) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else {
              List<Album> albums = snapshot.data!;
              return ListView.builder(
                itemCount: albums.length,
                itemBuilder: (context, index) {
                  Album album=albums[index];
                  return InkWell(
                    onTap: (){
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                        return AlbumsDetailsScreen(album: album,);
                      },));

                    },
                    child: Card(
                      color: Colors.deepPurple,
                      margin: const EdgeInsets.all(10.0),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                children: [

                                  Row(
                                    children: [
                                      const SizedBox(
                                        width: 14,
                                      ),
                                      const Expanded(
                                        flex: 1,
                                        child:   Text('UserId',
                                          style: TextStyle(
                                              color: Colors.white, fontSize: 20),),
                                      ),
                                      Expanded( flex: 2,child: Text(album.userId.toString(),
                                        style: const TextStyle(
                                            color: Colors.white,  ),)),
                                    ],
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(children: [
                                    const SizedBox(
                                      width: 14,
                                    ),
                                    const Expanded( flex: 1,
                                        child: Text('Id',
                                          style:   TextStyle(
                                              color: Colors.white, fontSize: 20),)),
                                    Expanded( flex: 2,
                                      child: Text(album.id.toString(),
                                        style: const TextStyle(
                                            color: Colors.white,  ),),),
                                  ],),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Row(children: [
                                    const SizedBox(
                                      width: 14,
                                    ),
                                    const Expanded( flex: 1,
                                        child: Text('Title',
                                          style: TextStyle(
                                              color: Colors.white, fontSize: 20),)),
                                    Expanded( flex: 2,
                                      child: Text(album.title,
                                        style: const TextStyle(
                                            color: Colors.white, ),),),
                                  ],),
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
