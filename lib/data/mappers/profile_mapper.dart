import 'package:go_assessment/data/dtos/profile_dto.dart';
import 'package:go_assessment/domain/entities/profile_entity.dart';
import 'package:go_assessment/utils/mapper.dart';

class ProfileMapper implements Mapper<ProfileDTO, ProfileEntity> {
  @override
  ProfileEntity mapFrom(ProfileDTO from) {
    return ProfileEntity(
        id: from.id,
        username: from.username,
        fullname: from.fullname,
        email: from.email,
        phone: from.phone,
        bio: from.bio);
  }

  @override
  ProfileDTO mapTo(ProfileEntity to) {
    throw UnimplementedError();
  }
}
