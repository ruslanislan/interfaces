import 'dart:convert';

import 'package:interfaces/i_violator_info.dart';
import 'package:interfaces/violator_address.dart';

class ViolatorInfoIp implements IViolatorInfo {

  final int _id;
  final String _name;
  final ViolatorAddress _legalAddress;
  ViolatorInfoIp({
    required int id,
    required String name,
    required ViolatorAddress legalAddress,
  }) : _id = id, _name = name, _legalAddress = legalAddress;

  @override
  int get id => _id;

  @override
  ViolatorAddress get legalViolatorAddress => _legalAddress;

  @override
  String get name => _name;

  @override
  ViolatorAddress? get postalViolatorAddress => null;


  ViolatorInfoIp copyWith({
    int? id,
    String? name,
    ViolatorAddress? legalAddress,
  }) {
    return ViolatorInfoIp(
      id: id ?? _id,
      name: name ?? _name,
      legalAddress: legalAddress ?? _legalAddress,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      '_id': _id,
      '_name': _name,
      '_legalAddress': _legalAddress.toMap(),
    };
  }

  factory ViolatorInfoIp.fromMap(Map<String, dynamic> map) {
    return ViolatorInfoIp(
      id: map['_id']?.toInt() ?? 0,
      name: map['_name'] ?? '',
      legalAddress: ViolatorAddress.fromMap(map['_legalAddress']),
    );
  }

  @override
  String toJson() => json.encode(toMap());

  factory ViolatorInfoIp.fromJson(String source) => ViolatorInfoIp.fromMap(json.decode(source));

  @override
  String toString() => 'ViolatorInfoIp(_id: $_id, _name: $_name, _legalAddress: $_legalAddress)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is ViolatorInfoIp &&
      other._id == _id &&
      other._name == _name &&
      other._legalAddress == _legalAddress;
  }

  @override
  int get hashCode => _id.hashCode ^ _name.hashCode ^ _legalAddress.hashCode;
}
