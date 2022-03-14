// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i4;

import '../../data/data_sources/profile_data_source.dart' as _i6;
import '../../data/mappers/profile_dto_mapper.dart' as _i5;
import '../../data/mappers/profile_mapper.dart' as _i7;
import '../../data/repositories/profile_repository_impl.dart' as _i9;
import '../../domain/repositories/profile_repository.dart' as _i10;
import '../../domain/use_cases/get_profiles_use_case.dart' as _i11;
import '../blocs/profiles_bloc.dart' as _i12;
import '../mappers/profile_model_mapper.dart' as _i8;
import 'injector.dart' as _i13; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final networkModule = _$NetworkModule();
  final appModule = _$AppModule();
  final repositoriesModule = _$RepositoriesModule();
  gh.lazySingleton<_i3.Dio>(() => networkModule.dio);
  gh.lazySingleton<_i4.Logger>(() => appModule.logger);
  gh.factory<_i5.ProfileDTOMapper>(() => _i5.ProfileDTOMapper());
  gh.factory<_i6.ProfileDataSource>(
      () => _i6.ProfileDataSource(get<_i3.Dio>(), get<_i5.ProfileDTOMapper>()));
  gh.factory<_i7.ProfileMapper>(() => _i7.ProfileMapper());
  gh.factory<_i8.ProfileModelMapper>(() => _i8.ProfileModelMapper());
  gh.factory<_i9.ProfileRepositoryImpl>(() => _i9.ProfileRepositoryImpl(
      get<_i6.ProfileDataSource>(), get<_i7.ProfileMapper>()));
  gh.lazySingleton<_i10.ProfileRepository>(() =>
      repositoriesModule.profileRepository(get<_i9.ProfileRepositoryImpl>()));
  gh.factory<_i11.GetProfilesUseCase>(
      () => _i11.GetProfilesUseCase(get<_i10.ProfileRepository>()));
  gh.factory<_i12.ProfilesBloc>(() => _i12.ProfilesBloc(
      get<_i11.GetProfilesUseCase>(), get<_i8.ProfileModelMapper>()));
  return get;
}

class _$NetworkModule extends _i13.NetworkModule {}

class _$AppModule extends _i13.AppModule {}

class _$RepositoriesModule extends _i13.RepositoriesModule {}
