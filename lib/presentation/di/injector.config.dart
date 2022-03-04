// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i3;

import '../../data/data_sources/profile_data_source.dart' as _i4;
import '../../data/mappers/profile_mapper.dart' as _i5;
import '../../data/repositories/profile_repository_impl.dart' as _i7;
import '../../domain/repositories/profile_repository.dart' as _i8;
import '../../domain/use_cases/get_profiles_use_case.dart' as _i9;
import '../blocs/profiles_bloc.dart' as _i10;
import '../mappers/profile_model_mapper.dart' as _i6;
import 'injector.dart' as _i11; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final appModule = _$AppModule();
  final repositoriesModule = _$RepositoriesModule();
  gh.lazySingleton<_i3.Logger>(() => appModule.logger);
  gh.factory<_i4.ProfileDataSource>(() => _i4.ProfileDataSource());
  gh.factory<_i5.ProfileMapper>(() => _i5.ProfileMapper());
  gh.factory<_i6.ProfileModelMapper>(() => _i6.ProfileModelMapper());
  gh.factory<_i7.ProfileRepositoryImpl>(() => _i7.ProfileRepositoryImpl(
      get<_i4.ProfileDataSource>(), get<_i5.ProfileMapper>()));
  gh.lazySingleton<_i8.ProfileRepository>(() =>
      repositoriesModule.profileRepository(get<_i7.ProfileRepositoryImpl>()));
  gh.factory<_i9.GetProfilesUseCase>(
      () => _i9.GetProfilesUseCase(get<_i8.ProfileRepository>()));
  gh.factory<_i10.ProfilesBloc>(() => _i10.ProfilesBloc(
      get<_i9.GetProfilesUseCase>(), get<_i6.ProfileModelMapper>()));
  return get;
}

class _$AppModule extends _i11.AppModule {}

class _$RepositoriesModule extends _i11.RepositoriesModule {}
