import 'package:go_assessment/data/dtos/profile_dto.dart';
import 'package:injectable/injectable.dart';

@injectable
class ProfileDataSource {
  ProfileDataSource();

  /// This DS is returning an empty list, to respect the flow and for demo purpose
  Future<List<ProfileDTO>> get profiles => Future.value([]);
}
