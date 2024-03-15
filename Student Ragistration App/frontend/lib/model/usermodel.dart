class UserModel {
  String? id;
  String? username;
  String? firstName;
  String? lastName;
  String? email;
  String? contactNumber;
  bool? activated;
  List<String>? roles;
  bool? accountNonExpired;

  UserModel(
      {this.id,
        this.username,
        this.firstName,
        this.lastName,
        this.email,
        this.contactNumber,
        this.activated,
        this.roles,
        this.accountNonExpired});

  UserModel.fromJson(Map<String, dynamic> json) {
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
