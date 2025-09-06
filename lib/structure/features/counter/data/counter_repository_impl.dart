import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../domain/entities/counter.dart';
import '../domain/repository/counter_repository.dart';


@LazySingleton(as: CounterRepository)
class CounterRepositoryImpl implements CounterRepository {
  SharedPreferences prefs;
  CounterRepositoryImpl(this.prefs);
  static const String _key = "countValue";

  @override
  Future<Counter> increment(Counter current) async {
    // await Future.delayed(Duration(milliseconds: 500));
    return Counter(value: current.value + 1);
  }

  @override
  Future<Counter> decrement(Counter current) async {
    // await Future.delayed(Duration(milliseconds: 500));
    return Counter(value: current.value - 1 );
  }

  @override
  Future<Counter> reset(Counter current) async {
    // await Future.delayed(Duration(milliseconds: 500));
    return Counter(value: 0 );
  }

  @override
  Future<void> saveCount(int value) async {
    await prefs.setInt(_key, value);
  }

  Future<int> loadCount() async {
    return await prefs.getInt(_key) ?? 0;
  }
}
