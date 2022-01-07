


import 'package:flutter/material.dart';
import 'package:jsonplaceholder/models/albums.dart';

class AlbumsDetailsScreen extends StatefulWidget {
  Album album;
    AlbumsDetailsScreen({Key? key,required this.album}) : super(key: key);

  @override
  _AlbumsDetailsScreenState createState() => _AlbumsDetailsScreenState();
}

class _AlbumsDetailsScreenState extends State<AlbumsDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(appBar: AppBar(
      centerTitle: true,
      title: const Text('Album Detail Screen'),
    backgroundColor: Colors.deepPurple,),
    body: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Card(margin: const EdgeInsets.all(20),

        color: Colors.deepPurple,
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(50.0),
          child: Column(children: [
            Row(children: [
              const SizedBox(width: 15,),
              const Expanded( flex: 1,
                child: Text('UserId',
                  style:
                  TextStyle(color: Colors.white, fontSize: 20),),),
              Expanded(child: Text(widget.album.userId.toString(),
                style:
                const TextStyle(color: Colors.white, ),)),
            ],),
            const SizedBox(height: 50,),
            Row(children: [
              const SizedBox(width: 15,),
              const Expanded( flex: 1,
                child: Text(' Id',
                  style:
                  TextStyle(color: Colors.white, fontSize: 20),),),
              Expanded(child: Text(widget.album.id.toString(),
                style:
                const TextStyle(color: Colors.white,),)),
            ],),
            const SizedBox(height: 50,),
            Row(children: [
              const SizedBox(width: 15,),
              const Expanded( flex: 1,
                child: Text('Title',
                  style:
                  TextStyle(color: Colors.white, fontSize: 20),),),
              Expanded(child: Text(widget.album.title.toString(),
                style:
                const TextStyle(color: Colors.white,),)),
            ],),
            const SizedBox(height: 50,),

          ],),
        ),
      ],),),
    ),
    ),);
  }
}
