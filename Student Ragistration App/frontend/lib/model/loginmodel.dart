  class LogInModel {
  String? token;
  String? type;
  User? user;

  LogInModel({this.token, this.type, this.user});

  LogInModel.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    type = json['type'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this.token;
    data['type'] = this.type;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    return data;
  }
}

class User {
  String? id;
  String? username;
  String? firstName;
  String? lastName;
  String? email;
  String? contactNumber;
  bool? activated;
  List<String>? roles;
  bool? accountNonExpired;

  User(
      {this.id,
        this.username,
        this.firstName,
        this.lastName,
        this.email,
        this.contactNumber,
        this.activated,
        this.roles,
        this.accountNonExpired});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    username = json['username'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    email = json['email'];
    contactNumber = json['contactNumber'];
    activated = json['activated'];
    roles = json['roles'].cast<String>();
    accountNonExpired = json['accountNonExpired'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['username'] = this.username;
    data['firstName'] = this.firstName;
    data['lastName'] = this.lastName;
    data['email'] = this.email;
    data['contactNumber'] = this.contactNumber;
    data['activated'] = this.activated;
    data['roles'] = this.roles;
    data['accountNonExpired'] = this.accountNonExpired;
    return data;
  }
}