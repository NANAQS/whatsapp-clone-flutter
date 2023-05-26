import 'dart:convert';

class UserModel {
  String firstName;
  String lastName;
  String image;
  String phone;
  UserModel({
    required this.firstName,
    required this.lastName,
    required this.image,
    required this.phone,
  });

  UserModel copyWith({
    String? firstName,
    String? lastName,
    String? image,
    String? phone,
  }) {
    return UserModel(
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      image: image ?? this.image,
      phone: phone ?? this.phone,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'firstName': firstName,
      'lastName': lastName,
      'image': image,
      'phone': phone,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      firstName: map['firstName'] as String,
      lastName: map['lastName'] as String,
      image: map['image'] as String,
      phone: map['phone'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) =>
      UserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UserModel(firstName: $firstName, lastName: $lastName, image: $image, phone: $phone)';
  }

  @override
  bool operator ==(covariant UserModel other) {
    if (identical(this, other)) return true;

    return other.firstName == firstName &&
        other.lastName == lastName &&
        other.image == image &&
        other.phone == phone;
  }

  @override
  int get hashCode {
    return firstName.hashCode ^
        lastName.hashCode ^
        image.hashCode ^
        phone.hashCode;
  }
}
