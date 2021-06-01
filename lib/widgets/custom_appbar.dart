import 'package:flutter/material.dart';
import 'package:flutter_covid19/config/palette.dart';
                                                 //앱바를 숨기면서 스테이트바는 남기기
class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomAppBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Palette.kPrimaryColor,
      elevation: 0.0,
      leading: IconButton(
        icon: Icon(Icons.menu),
        iconSize: 28,
        onPressed: () {},
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.notifications_none),
          iconSize: 28,
          onPressed: () {},
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
