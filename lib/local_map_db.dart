import 'package:interfaces/i_violator_info.dart';

class LocalMapDb {
  final Map<int, IViolatorInfo> map = {};

  Future<void> add(IViolatorInfo iViolatorInfo) async {
    map.addAll({iViolatorInfo.id: iViolatorInfo});
  }

  Future<List<IViolatorInfo>> getAll() async {
    return map.values.toList();
  }

  Future<IViolatorInfo?> getById(int id) async {
    return map[id];
  }

  Future <IViolatorInfo?> remove(IViolatorInfo iViolatorInfo) async {
    return map.remove(iViolatorInfo.id);
  }

  Future<IViolatorInfo> update(IViolatorInfo iViolatorInfo) async {
    return map.update(iViolatorInfo.id, (value) => iViolatorInfo);
  }
}