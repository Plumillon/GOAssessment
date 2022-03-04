import 'package:go_assessment/data/dtos/profile_dto.dart';
import 'package:go_assessment/domain/entities/profile_entity.dart';
import 'package:go_assessment/utils/mapper.dart';

class ProfileMapper implements Mapper<ProfileDTO, ProfileEntity> {
  @override
  ProfileEntity mapFrom(ProfileDTO from) {
    return ProfileEntity(name: from.name, avatar: from.image);
  }

  @override
  ProfileDTO mapTo(ProfileEntity to) {
    throw UnimplementedError();
  }
}
