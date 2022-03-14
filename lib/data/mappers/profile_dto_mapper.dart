import 'package:go_assessment/data/dtos/profile_dto.dart';
import 'package:go_assessment/utils/mapper.dart';

class ProfileDTOMapper implements Mapper<dynamic, ProfileDTO> {
  @override
  ProfileDTO mapFrom(dynamic from) {
    return ProfileDTO.fromJson(from);
  }

  @override
  dynamic mapTo(ProfileDTO to) {
    throw UnimplementedError();
  }
}
