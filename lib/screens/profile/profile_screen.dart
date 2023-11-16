import 'package:flutter/material.dart';
import 'package:olshop/screens/enum.dart';
import 'package:olshop/widgets/bottom_nav_bar.dart';

import '../../widgets/reusable_row.dart';
import '../home_screen.dart';
import 'profile_pic.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({
    super.key,
  });

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
                  const ReusableRow(
                    title: "Username",
                    iconData: Icons.person,
                  ),
                  const ReusableRow(
                    title: "Email Address",
                    iconData: Icons.email,
                  ),
                  const SizedBox(height: 200),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 90,
                      vertical: 10,
                    ),
                    child: SizedBox(
                      height: 50,
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(const Color(0xFFFD725A)),
                          shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                        ),
                        child: const Row(
                          children: [
                            Icon(Icons.logout),
                            SizedBox(width: 45),
                            Text("Logout"),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}
