// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:block_freezed_practice/structure/features/counter/data/counter_repository_impl.dart'
    as _i899;
import 'package:block_freezed_practice/structure/features/counter/data/theme_repository_impl.dart'
    as _i424;
import 'package:block_freezed_practice/structure/features/counter/domain/repository/counter_repository.dart'
    as _i280;
import 'package:block_freezed_practice/structure/features/counter/domain/repository/theme_repository.dart'
    as _i901;
import 'package:block_freezed_practice/structure/features/counter/domain/usecases/decrement_counter.dart'
    as _i592;
import 'package:block_freezed_practice/structure/features/counter/domain/usecases/increment_counter.dart'
    as _i543;
import 'package:block_freezed_practice/structure/features/counter/domain/usecases/load_count.dart'
    as _i271;
import 'package:block_freezed_practice/structure/features/counter/domain/usecases/load_theme.dart'
    as _i192;
import 'package:block_freezed_practice/structure/features/counter/domain/usecases/reset_counter.dart'
    as _i486;
import 'package:block_freezed_practice/structure/features/counter/domain/usecases/toggle_theme.dart'
    as _i261;
import 'package:block_freezed_practice/structure/features/counter/presentation/bloc/counter/counter_bloc.dart'
    as _i380;
import 'package:block_freezed_practice/structure/features/counter/presentation/bloc/theme/theme_bloc.dart'
    as _i792;
import 'package:block_freezed_practice/structure/injection.dart' as _i520;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final registerModule = _$RegisterModule();
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => registerModule.prefs,
      preResolve: true,
    );
    gh.lazySingleton<_i901.ThemeRepository>(
      () => _i424.ThemeRepositoryImpl(gh<_i460.SharedPreferences>()),
    );
    gh.lazySingleton<_i192.LoadThemeUseCase>(
      () => _i192.LoadThemeUseCase(gh<_i901.ThemeRepository>()),
    );
    gh.lazySingleton<_i261.ToggleThemeUseCase>(
      () => _i261.ToggleThemeUseCase(gh<_i901.ThemeRepository>()),
    );
    gh.lazySingleton<_i280.CounterRepository>(
      () => _i899.CounterRepositoryImpl(gh<_i460.SharedPreferences>()),
    );
    gh.lazySingleton<_i271.LoadCount>(
      () => _i271.LoadCount(gh<_i280.CounterRepository>()),
    );
    gh.factory<_i792.ThemeBloc>(
      () => _i792.ThemeBloc(
        gh<_i261.ToggleThemeUseCase>(),
        gh<_i192.LoadThemeUseCase>(),
      ),
    );
    gh.lazySingleton<_i592.DecrementCounter>(
      () => _i592.DecrementCounter(gh<_i280.CounterRepository>()),
    );
    gh.lazySingleton<_i543.IncrementCounter>(
      () => _i543.IncrementCounter(gh<_i280.CounterRepository>()),
    );
    gh.lazySingleton<_i486.ResetCounter>(
      () => _i486.ResetCounter(gh<_i280.CounterRepository>()),
    );
    gh.factory<_i380.CounterBloc>(
      () => _i380.CounterBloc(
        gh<_i543.IncrementCounter>(),
        gh<_i592.DecrementCounter>(),
        gh<_i486.ResetCounter>(),
        gh<_i271.LoadCount>(),
      ),
    );
    return this;
  }
}

class _$RegisterModule extends _i520.RegisterModule {}
