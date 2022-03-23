import 'package:interfaces/models/violator_address.dart';

abstract class IViolatorInfo {
  int get id;
  String get name;
  ViolatorAddress get legalViolatorAddress;
  ViolatorAddress? get postalViolatorAddress;

  String toJson();
}