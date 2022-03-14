class ProfileEntity {
  final int id;
  final String username;
  final String fullname;
  final String? phone;
  final String? email;
  final String? bio;

  ProfileEntity(
      {required this.id,
      required this.username,
      required this.fullname,
      this.phone,
      this.email,
      this.bio});
}
