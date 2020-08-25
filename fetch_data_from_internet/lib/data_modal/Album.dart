class Album {
  final int userId;
  final int id;
  final String title;

  Album({this.userId, this.id, this.title});

  //factory constructors, which can return subtypes or even null
  factory Album.fromJson(Map<String, dynamic> json) {
    return Album(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
    );
  }
}