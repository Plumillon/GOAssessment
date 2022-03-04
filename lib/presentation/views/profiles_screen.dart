import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_assessment/core/styles.dart';
import 'package:go_assessment/presentation/blocs/profiles_bloc.dart';
import 'package:go_assessment/presentation/di/injector.dart';
import 'package:go_assessment/presentation/events/profile_event.dart';
import 'package:go_assessment/presentation/models/profile_model.dart';
import 'package:go_assessment/presentation/states/profile_state.dart';
import 'package:go_assessment/presentation/views/profile_screen.dart';

class ProfilesScreen extends StatefulWidget {
  const ProfilesScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ProfilesScreenState();
}

class _ProfilesScreenState extends State<ProfilesScreen> {
  late ProfilesBloc _profilesBloc;
  bool _filterOpened = true;

  @override
  void initState() {
    super.initState();

    _profilesBloc = getIt<ProfilesBloc>();
    _profilesBloc.add(const ProfileEvent.load());
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profiles"),
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(_filterOpened ? 150 : 0),
            child: _filterOpened
                ? Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 2.0, vertical: 8.0),
                    child: _buildFilters(),
                  )
                : Container()),
        actions: [
          IconButton(
              // Ugly state
              onPressed: () => setState(() {
                    _filterOpened = !_filterOpened;
                  }),
              icon: const Icon(Icons.search))
        ],
      ),
      body: SafeArea(
        child: BlocProvider(
          create: (BuildContext context) => _profilesBloc,
          child: BlocBuilder<ProfilesBloc, ProfileState>(
            builder: (context, state) {
              if (state is ProfileStateLoading) {
                return Container(
                    alignment: Alignment.center,
                    child: const CircularProgressIndicator());
              } else if (state is ProfileStateLoaded) {
                return _buildProfilesList(state.profiles);
              }

              return Container();
            },
          ),
        ),
      ),
    );
  }

  Widget _buildProfilesList(List<ProfileModel> profiles) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: profiles.length,
            itemBuilder: (BuildContext context, int index) => InkWell(
              child: _buildProfileItem(profiles[index]),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        ProfileScreen(profile: profiles[index])),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildProfileItem(ProfileModel model) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset(
                model.avatar,
                width: 160,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 2.0),
                child: SizedBox(
                  width: 160,
                  child: LinearProgressIndicator(
                    color: Styles.partyGame900,
                    backgroundColor: Styles.partyGame100,
                    minHeight: 10,
                    value: model.partyGame / 5,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 2.0),
                child: SizedBox(
                  width: 160,
                  child: LinearProgressIndicator(
                    color: Styles.videoGame900,
                    backgroundColor: Styles.videoGame100,
                    minHeight: 10,
                    value: model.videoGame / 5,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 2.0),
                child: SizedBox(
                  width: 160,
                  child: LinearProgressIndicator(
                    color: Styles.boardGame900,
                    backgroundColor: Styles.boardGame100,
                    minHeight: 10,
                    value: model.boardGame / 5,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 2.0),
                child: SizedBox(
                  width: 160,
                  child: LinearProgressIndicator(
                    color: Styles.RPG900,
                    backgroundColor: Styles.RPG100,
                    minHeight: 10,
                    value: model.rpg / 5,
                  ),
                ),
              ),
            ],
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    model.name,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    model.bio,
                    maxLines: 7,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildFilters() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        const Text(
          "Filter",
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 18, color: Colors.white),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0),
          child: Row(
            children: const [
              SizedBox(
                width: 160,
                child: LinearProgressIndicator(
                  color: Styles.partyGame900,
                  backgroundColor: Styles.partyGame100,
                  minHeight: 10,
                  value: 1.0,
                ),
              ),
              Padding(
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
            children: const [
              SizedBox(
                width: 160,
                child: LinearProgressIndicator(
                  color: Styles.videoGame900,
                  backgroundColor: Styles.videoGame100,
                  minHeight: 10,
                  value: 0.2,
                ),
              ),
              Padding(
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
            children: const [
              SizedBox(
                width: 160,
                child: LinearProgressIndicator(
                  color: Styles.boardGame900,
                  backgroundColor: Styles.boardGame100,
                  minHeight: 10,
                  value: 0,
                ),
              ),
              Padding(
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
            children: const [
              SizedBox(
                width: 160,
                child: LinearProgressIndicator(
                  color: Styles.RPG900,
                  backgroundColor: Styles.RPG100,
                  minHeight: 10,
                  value: 0.6,
                ),
              ),
              Padding(
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
      ],
    );
  }
}
