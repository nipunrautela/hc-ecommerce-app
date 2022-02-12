import 'package:flutter/material.dart';

import '../constants.dart';

class ItemScreen extends StatelessWidget {
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
           icon: SvgPicture.asset("Assets/icons/search-svgrepo-com.svg",
              color: kTextColor
          ),
      ),
        IconButton(onPressed: () {},
          icon: SvgPicture.asset("Assets/icons/shopping-cart.svg",
              color: kTextColor
          ),
        ),
        SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }
}
