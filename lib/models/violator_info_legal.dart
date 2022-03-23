import 'dart:convert';

import 'package:interfaces/interfaces/i_violator_info.dart';
import 'package:interfaces/models/violator_address.dart';

class ViolatorInfoLegal implements IViolatorInfo {
  @override
  final int id;
  @override
  final ViolatorAddress legalViolatorAddress;
  @override
  final String name;
  @override
  final ViolatorAddress? postalViolatorAddress;

  ViolatorInfoLegal({
    required this.id,
    required this.legalViolatorAddress,
    required this.name,
    this.postalViolatorAddress,
  });

  @override
  String toJson() => json.encode(toMap());



  ViolatorInfoLegal copyWith({
    int? id,
    ViolatorAddress? legalViolatorAddress,
    String? name,
    ViolatorAddress? postalViolatorAddress,
  }) {
    return ViolatorInfoLegal(
      id: id ?? this.id,
      legalViolatorAddress: legalViolatorAddress ?? this.legalViolatorAddress,
      name: name ?? this.name,
      postalViolatorAddress: postalViolatorAddress ?? this.postalViolatorAddress,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'legalViolatorAddress': legalViolatorAddress.toMap(),
      'name': name,
      'postalViolatorAddress': postalViolatorAddress?.toMap(),
    };
  }

  factory ViolatorInfoLegal.fromMap(Map<String, dynamic> map) {
    return ViolatorInfoLegal(
      id: map['id']?.toInt() ?? 0,
      legalViolatorAddress: ViolatorAddress.fromMap(map['legalViolatorAddress']),
      name: map['name'] ?? '',
      postalViolatorAddress: map['postalViolatorAddress'] != null ? ViolatorAddress.fromMap(map['postalViolatorAddress']) : null,
    );
  }

  factory ViolatorInfoLegal.fromJson(String source) => ViolatorInfoLegal.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ViolatorInfoLegal(id: $id, legalViolatorAddress: $legalViolatorAddress, name: $name, postalViolatorAddress: $postalViolatorAddress)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is ViolatorInfoLegal &&
      other.id == id &&
      other.legalViolatorAddress == legalViolatorAddress &&
      other.name == name &&
      other.postalViolatorAddress == postalViolatorAddress;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      legalViolatorAddress.hashCode ^
      name.hashCode ^
      postalViolatorAddress.hashCode;
  }
}
