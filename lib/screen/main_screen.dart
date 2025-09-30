import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meditator_app/screen/main_screen/create_custom_exercise_page.dart';
import 'package:meditator_app/screen/main_screen/custom_exercises_page.dart';
import 'package:meditator_app/screen/main_screen/home_page.dart';
import 'package:meditator_app/screen/main_screen/mindfull_exercises_page.dart';
import 'package:meditator_app/screen/main_screen/profile_page.dart';
import 'package:meditator_app/utils/colors.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

int _selectedIndex = 0;

class _MainScreenState extends State<MainScreen> {
  static const List<Widget> _pages = [
    HomePage(),
    MindfullExercisesPage(),
    CustomExercisesPage(),
    CreateCustomExercisePage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.circular(100),
        child: BottomNavigationBar(
          onTap: _onItemTapped,
          currentIndex: _selectedIndex,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/icons/house.svg",
                colorFilter: ColorFilter.mode(
                  _selectedIndex == 0
                      ? AppColors.primaryPurple
                      : AppColors.primaryGrey,
                  BlendMode.srcIn,
                ),
                semanticsLabel: "house svg",
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/brain.svg',
                colorFilter: ColorFilter.mode(
                  _selectedIndex == 1
                      ? AppColors.primaryPurple
                      : AppColors.primaryGrey,
                  BlendMode.srcIn,
                ),
                semanticsLabel: "brain svg",
              ),
              label: "Mindfull",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/circle-plus.svg',
                colorFilter: ColorFilter.mode(
                  _selectedIndex == 2
                      ? AppColors.primaryPurple
                      : AppColors.primaryGrey,
                  BlendMode.srcIn,
                ),
                semanticsLabel: "circle-plus svg",
              ),
              label: "Create",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/file-plus-2.svg',
                colorFilter: ColorFilter.mode(
                  _selectedIndex == 3
                      ? AppColors.primaryPurple
                      : AppColors.primaryGrey,
                  BlendMode.srcIn,
                ),
                semanticsLabel: "file-plus svg",
              ),
              label: "Custom",
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                'assets/icons/user-pen.svg',
                colorFilter: ColorFilter.mode(
                  _selectedIndex == 4
                      ? AppColors.primaryPurple
                      : AppColors.primaryGrey,
                  BlendMode.srcIn,
                ),
                semanticsLabel: "user-pen svg",
              ),
              label: "Profile",
            ),
          ],

          selectedItemColor: AppColors.primaryPurple,
          unselectedItemColor: AppColors.primaryGrey,
        ),
      ),

      body: _pages[_selectedIndex],
    );
  }
}
