import 'dart:convert';

class ViolatorAddress {
  final int id;
  final String name;
  final String okato;
  final String location;

  ViolatorAddress({
    required this.id,
    required this.name,
    required this.okato,
    required this.location,
  });


  ViolatorAddress copyWith({
    int? id,
    String? name,
    String? okato,
    String? location,
  }) {
    return ViolatorAddress(
      id: id ?? this.id,
      name: name ?? this.name,
      okato: okato ?? this.okato,
      location: location ?? this.location,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'okato': okato,
      'location': location,
    };
  }

  factory ViolatorAddress.fromMap(Map<String, dynamic> map) {
    return ViolatorAddress(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      okato: map['okato'] ?? '',
      location: map['location'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ViolatorAddress.fromJson(String source) => ViolatorAddress.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ViolatorAddress(id: $id, name: $name, okato: $okato, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is ViolatorAddress &&
      other.id == id &&
      other.name == name &&
      other.okato == okato &&
      other.location == location;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      okato.hashCode ^
      location.hashCode;
  }
}
