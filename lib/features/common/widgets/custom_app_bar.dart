import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required String appBarTitle,
    required VoidCallback onTapBackButton,
  }) : _appBarTitle = appBarTitle,
       _onTapBackButton = onTapBackButton;

  final String _appBarTitle;
  final VoidCallback _onTapBackButton;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xFFFFFFFF),
      elevation: 5,
      title: Text(_appBarTitle),
      titleTextStyle: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: Colors.black,
      ),
      centerTitle: true,
      leading: IconButton(
        onPressed: _onTapBackButton,
        icon: Icon(Icons.arrow_back),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Badge(
            backgroundColor: Colors.red,
            child: Icon(Icons.notifications_outlined),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
