class Comment {
  int postId;
  int id;
  String name;
  String email;
  String body;

  Comment({required this.postId,
    required this.id,
    required this.name,
    required this.email,
    required this.body});

  static Comment fromMap(Map<String, dynamic>map) {
    return Comment(postId: map['postId'],
        id: map['id'],
        name: map['name'],
        email: map['email'],
        body: map['body']);
  }
}