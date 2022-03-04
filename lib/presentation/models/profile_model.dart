class ProfileModel {
  final String name;
  final String avatar;
  String bio = "";
  int partyGame = 0;
  int boardGame = 0;
  int rpg = 0;
  int videoGame = 0;

  ProfileModel(
      {required this.name,
      required this.avatar,
      this.bio = "",
      this.partyGame = 0,
      this.boardGame = 0,
      this.rpg = 0,
      this.videoGame = 0});
}
