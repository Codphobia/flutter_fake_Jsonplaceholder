class Photo {
  int albumId;
  int id;
  String title;
  String url;
  String thumbnailUrl;

  Photo(
      {required this.albumId,
      required this.id,
      required this.url,
      required this.thumbnailUrl,required this.title});

  static Photo fromMap(Map<String, dynamic> map) {
    return Photo(
        albumId: map['albumId'],
        id: map['id'],
        url: map['url'],
        title: map['title'],
        thumbnailUrl: map['thumbnailUrl']);
  }
}
