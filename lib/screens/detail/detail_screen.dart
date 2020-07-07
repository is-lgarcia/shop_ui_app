import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_ui_app/model/Product.dart';
import 'package:shop_ui_app/screens/detail/components/body.dart';

import '../../constants.dart';

class DetailScreen extends StatelessWidget {
  final Product product;

  const DetailScreen({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Body(product: product,),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          "assets/icons/back.svg",
          color: Colors.white,
        ),
        onPressed: () => Navigator.pop(context),
      ),
      actions: <Widget>[
        IconButton(
            icon: SvgPicture.asset(
              "assets/icons/search.svg",
              color: Colors.white,
            ),
            onPressed: null),
        IconButton(
            icon: SvgPicture.asset(
              "assets/icons/cart.svg",
              color: Colors.white,
            ),
            onPressed: null),
            SizedBox(
              width: kDefaultPadding / 2
            )
      ],
    );
  }
}
