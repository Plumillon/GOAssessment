class ProfileModel {
  final int id;
  final String username;
  final String fullname;
  final String phone;
  final String email;
  final String bio;
  final String avatar;
  int partyGame;
  int boardGame;
  int rpg;
  int videoGame;

  ProfileModel(
      {required this.id,
      required this.username,
      required this.fullname,
      this.phone = "",
      this.email = "",
      this.bio = "",
      this.avatar = "",
      this.partyGame = 0,
      this.boardGame = 0,
      this.rpg = 0,
      this.videoGame = 0});
}
