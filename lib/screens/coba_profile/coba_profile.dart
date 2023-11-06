import 'package:flutter/material.dart';

import '../home_screen.dart';
import 'profile_menu.dart';
import '../profile/profile_pic.dart';

class CobaProfile extends StatelessWidget {
  const CobaProfile({super.key});

  static const keyDarkMode = 'key-dark-mode';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          ),
                        );
                      },
                      child: const Icon(
                        Icons.arrow_back_ios_new,
                        size: 22,
                      ),
                    ),
                    const Text(
                      'Profile',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => HomeScreen(),
                          ),
                        );
                      },
                      child: const Icon(
                        Icons.more_horiz,
                        size: 22,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  const ProfilePic(),
                  const SizedBox(height: 20),
                  ProfileMenu(
                    icon: Icons.person,
                    text: "My Account",
                    press: () {},
                  ),
                  ProfileMenu(
                    icon: Icons.notifications,
                    text: "Notification",
                    press: () {},
                  ),
                  ProfileMenu(
                    icon: Icons.settings,
                    text: "Settings",
                    press: () {},
                  ),
                  ProfileMenu(
                    icon: Icons.help_outline_rounded,
                    text: "Help Center",
                    press: () {},
                  ),
                  ProfileMenu(
                    icon: Icons.logout,
                    text: "Logout",
                    press: () {},
                  ),
                ],
              ),
              // Widget buildDarkMode () => SwitchSettingsTyle,
            ],
          ),
        ),
      ),
      // bottomNavigationBar: const BottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}
