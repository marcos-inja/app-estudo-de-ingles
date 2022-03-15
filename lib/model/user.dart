class User {
  final int? id;
  final String name;
  final String email;
  final String pass;

  User(
      { this.id,
      required this.name,
      required this.email,
      required this.pass,
      });

  User.fromMap(Map<String, dynamic> res)
      : id = res["id"],
        name = res["name"],
        email = res["email"],
        pass = res["pass"];

  Map<String, Object?> toMap() {
    return {'id':id,'name': name, 'email': email, 'pass': pass};
  }
}