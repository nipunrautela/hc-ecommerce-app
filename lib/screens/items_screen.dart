import 'package:flutter/material.dart';

import '../constants.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
    )
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(icon: SvgPicture.asset("Assets/icons/back.svg"),
          onPressed: () {},
      ),
      actions: <Widget>[IconButton(onPressed: () {},
          icon: SvgPicture.asset("Assets/icons/search.svg",
              color: kTextColor
          ),
      ),
        IconButton(onPressed: () {},
          icon: SvgPicture.asset("Assets/icons/cart.svg",
              color: kTextColor
          ),
        ),
        SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }
}