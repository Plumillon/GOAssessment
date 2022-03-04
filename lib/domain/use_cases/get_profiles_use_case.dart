import 'package:go_assessment/domain/entities/profile_entity.dart';
import 'package:go_assessment/domain/repositories/profile_repository.dart';
import 'package:go_assessment/domain/use_cases/use_case.dart';

class GetProfilesUseCase implements FutureUseCase<void, List<ProfileEntity>> {
  final ProfileRepository _itemRepository;

  GetProfilesUseCase(this._itemRepository);

  /// Get a list of all profiles
  /// TODO: implements filters
  @override
  Future<List<ProfileEntity>> execute({void param}) {
    return _itemRepository.getProfiles();
  }
}
