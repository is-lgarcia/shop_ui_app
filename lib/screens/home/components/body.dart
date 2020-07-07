import 'package:flutter/material.dart';
import 'package:shop_ui_app/constants.dart';
import 'package:shop_ui_app/model/Product.dart';
import 'package:shop_ui_app/screens/detail/detail_screen.dart';

import 'categories.dart';
import 'item_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            "Women",
            style: Theme.of(context)
                .textTheme
                .headline5
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.75,
                  mainAxisSpacing: kDefaultPadding,
                  crossAxisSpacing: kDefaultPadding),
              itemBuilder: (context, index) => ItemCard(
                product: products[index],
                press: () => Navigator.push(
                    context, MaterialPageRoute(builder: (context) => DetailScreen(
                      product: products[index]
                    ))),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
