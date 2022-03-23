import 'package:interfaces/i_violator_info.dart';

abstract class IViolatorRepository {
  Future<IViolatorInfo?> getById(int id);
  Future<void> create(IViolatorInfo iViolatorInfo);
  Future<IViolatorInfo?> delete(IViolatorInfo iViolatorInfo);
  Future<IViolatorInfo> update(IViolatorInfo iViolatorInfo);
  Future<List<IViolatorInfo>> getAll();
}