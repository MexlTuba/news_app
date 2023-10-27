import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBar extends StatelessWidget {
  final ValueNotifier<int> selectedIndex;

  const BottomNavBar({
    Key? key,
    required this.selectedIndex,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<int>(
      valueListenable: selectedIndex,
      builder: (context, value, child) {
        return BottomNavigationBar(
          currentIndex: value,
          onTap: (index) => selectedIndex.value = index,
          items: [
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                value == 0
                    ? 'assets/svg/home_selected_icon.svg'
                    : 'assets/svg/home_unselected_icon.svg',
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                value == 1
                    ? 'assets/svg/bookmark_selected_icon.svg'
                    : 'assets/svg/bookmark_unselected_icon.svg',
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                value == 2
                    ? 'assets/svg/notification_selected_icon.svg'
                    : 'assets/svg/notification_unselected_icon.svg',
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                value == 3
                    ? 'assets/svg/profile_selected_icon.svg'
                    : 'assets/svg/profile_unselected_icon.svg',
              ),
              label: '',
            ),
          ],
        );
      },
    );
  }
}
