import 'package:interfaces/i_violator_info.dart';
import 'package:interfaces/i_violator_repository.dart';
import 'package:interfaces/local_map_db.dart';
import 'package:interfaces/violator_address.dart';
import 'package:interfaces/violator_info_ip.dart';
import 'package:interfaces/violator_info_legal.dart';
import 'package:interfaces/violator_local_repository.dart';

void main(List<String> arguments) async {

  final LocalMapDb localMapDb = LocalMapDb();
  final IViolatorRepository violatorRepository = ViolatorLocalRepository(localMapDb);

  final IViolatorInfo violatorInfoIp = ViolatorInfoIp(
    id: 1,
    name: "Bill Geits",
    legalAddress: ViolatorAddress(
      id: 1,
      location: 'USA',
      name: 'Colorado',
      okato: '1231',
    ),
  );

  final IViolatorInfo violatorInfoLegal = ViolatorInfoLegal(
    id: 2,
    name: 'Djo Baiden',
    legalViolatorAddress: ViolatorAddress(
      id: 1,
      location: "USA",
      name: "New York",
      okato: "1234556",
    ),
    postalViolatorAddress: ViolatorAddress(
      id: 1,
      location: "USA",
      name: "New York",
      okato: "1234556",
    ),
  );

  violatorRepository.create(violatorInfoLegal);
  violatorRepository.create(violatorInfoIp);
  final List<IViolatorInfo> data = await violatorRepository.getAll();

  data.forEach(print);
}
