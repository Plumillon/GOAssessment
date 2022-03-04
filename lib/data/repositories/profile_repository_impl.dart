import 'package:go_assessment/data/data_sources/profile_data_source.dart';
import 'package:go_assessment/data/mappers/profile_mapper.dart';
import 'package:go_assessment/domain/entities/profile_entity.dart';
import 'package:go_assessment/domain/repositories/profile_repository.dart';

class ProfileRepositoryImpl implements ProfileRepository {
  final ProfileDataSource _dataSource;
  final ProfileMapper _mapper;

  ProfileRepositoryImpl(this._dataSource, this._mapper);

  @override
  Future<List<ProfileEntity>> getProfiles() {
    return _dataSource.profiles.then((profiles) =>
        profiles.map((profile) => _mapper.mapFrom(profile)).toList());
  }
}
