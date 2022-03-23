import 'dart:convert';

class User {
  final int id;
  final String name;
  final String middleName;
  final String lastName;
  final DateTime dateOfBirth;
  final String gender;
  User({
    required this.id,
    required this.name,
    required this.middleName,
    required this.lastName,
    required this.dateOfBirth,
    required this.gender,
  });

  User copyWith({
    int? id,
    String? name,
    String? middleName,
    String? lastName,
    DateTime? dateOfBirth,
    String? gender,
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      middleName: middleName ?? this.middleName,
      lastName: lastName ?? this.lastName,
      dateOfBirth: dateOfBirth ?? this.dateOfBirth,
      gender: gender ?? this.gender,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'middleName': middleName,
      'lastName': lastName,
      'dateOfBirth': dateOfBirth.millisecondsSinceEpoch,
      'gender': gender,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      middleName: map['middleName'] ?? '',
      lastName: map['lastName'] ?? '',
      dateOfBirth: DateTime.fromMillisecondsSinceEpoch(map['dateOfBirth']),
      gender: map['gender'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) => User.fromMap(json.decode(source));

  @override
  String toString() {
    return 'User(id: $id, name: $name, middleName: $middleName, lastName: $lastName, dateOfBirth: $dateOfBirth, gender: $gender)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is User &&
      other.id == id &&
      other.name == name &&
      other.middleName == middleName &&
      other.lastName == lastName &&
      other.dateOfBirth == dateOfBirth &&
      other.gender == gender;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      middleName.hashCode ^
      lastName.hashCode ^
      dateOfBirth.hashCode ^
      gender.hashCode;
  }
}
