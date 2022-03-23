import 'package:interfaces/i_violator_info.dart';
import 'package:interfaces/i_violator_repository.dart';
import 'package:interfaces/local_map_db.dart';

class ViolatorLocalRepository implements IViolatorRepository {
  final LocalMapDb _localMapDb;
  ViolatorLocalRepository(
    this._localMapDb,
  );

  @override
  Future<void> create(IViolatorInfo iViolatorInfo) async {
    _localMapDb.add(iViolatorInfo);
  }

  @override
  Future<IViolatorInfo?> delete(IViolatorInfo iViolatorInfo) async {
    return _localMapDb.remove(iViolatorInfo);
  }

  @override
  Future<IViolatorInfo?> getById(int id) {
    return _localMapDb.getById(id);
  }

  @override
  Future<IViolatorInfo> update(IViolatorInfo iViolatorInfo) async {
    return _localMapDb.update(iViolatorInfo);
  }

  @override
  Future<List<IViolatorInfo>> getAll() async {
    return _localMapDb.getAll();
  }
}
