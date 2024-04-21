
class UserDto{
  static final String className = "userDto";
  String? email;
  String? password;

  UserDto({ this.email,  this.password,});

  factory UserDto.fromJson(Map<String, dynamic> json) {
    return UserDto(
      email: json['email'],
      password: json['password'],
    );
  }


  Map<String, dynamic> toJson() => {
    'email': email,
    'password': password,
  };

}