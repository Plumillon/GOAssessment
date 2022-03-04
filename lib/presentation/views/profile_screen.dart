import 'package:flutter/material.dart';
import 'package:go_assessment/core/styles.dart';
import 'package:go_assessment/presentation/models/profile_model.dart';

class ProfileScreen extends StatelessWidget {
  final ProfileModel profile;

  const ProfileScreen({Key? key, required this.profile}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(profile.name),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context, false),
        ),
        actions: [
          IconButton(
            onPressed: () => {},
            icon: const Icon(
              Icons.add,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(profile.avatar, height: 200),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Row(
                  children: [
                    SizedBox(
                      width: 160,
                      child: LinearProgressIndicator(
                        color: Styles.partyGame900,
                        backgroundColor: Styles.partyGame100,
                        minHeight: 10,
                        value: profile.partyGame / 5,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        "Partygames",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Styles.partyGame900),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Row(
                  children: [
                    SizedBox(
                      width: 160,
                      child: LinearProgressIndicator(
                        color: Styles.videoGame900,
                        backgroundColor: Styles.videoGame100,
                        minHeight: 10,
                        value: profile.videoGame / 5,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        "Videogames",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Styles.videoGame900),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Row(
                  children: [
                    SizedBox(
                      width: 160,
                      child: LinearProgressIndicator(
                        color: Styles.boardGame900,
                        backgroundColor: Styles.boardGame100,
                        minHeight: 10,
                        value: profile.boardGame / 5,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        "Boardgames",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Styles.boardGame900),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 4.0),
                child: Row(
                  children: [
                    SizedBox(
                      width: 160,
                      child: LinearProgressIndicator(
                        color: Styles.RPG900,
                        backgroundColor: Styles.RPG100,
                        minHeight: 10,
                        value: profile.rpg / 5,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        "Roleplay games",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Styles.RPG900),
                      ),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 16.0),
                child: Text(
                  "Bio",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  profile.bio,
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 16.0),
                child: Text(
                  "Favorite games",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GridView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  ),
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          "lib/presentation/assets/images/7wonders.png",
                          height: 140,
                        ),
                        const Text(
                          "Lorem Ipsum",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          "lib/presentation/assets/images/7wonders.png",
                          height: 140,
                        ),
                        const Text(
                          "Lorem Ipsum",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          "lib/presentation/assets/images/7wonders.png",
                          height: 140,
                        ),
                        const Text(
                          "Lorem Ipsum",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset(
                          "lib/presentation/assets/images/7wonders.png",
                          height: 140,
                        ),
                        const Text(
                          "Lorem Ipsum",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 16),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
