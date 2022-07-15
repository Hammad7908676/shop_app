import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/constraints.dart';
import 'package:shop_app/models/products.dart';
import 'package:shop_app/screens/detail/components/add_to_cart_and_buy.dart';
import 'package:shop_app/screens/detail/components/color_and_size_of_product.dart';
import 'package:shop_app/screens/detail/components/counter.dart';
import 'package:shop_app/screens/detail/components/description.dart';
import 'package:shop_app/screens/detail/components/heart_fav_icons.dart';
import 'package:shop_app/screens/detail/components/product_image_detail.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: [
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: 20.0,
                    right: 20.0,
                  ),
                  //height: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                  child: Column(
                    children: [
                      ColorsAndSizeOfProduct(product: product),
                      SizedBox(
                        height: 20.0 / 2,
                      ),
                      Description(product: product),
                      SizedBox(
                        height: 20.0 / 2,
                      ),
                      HeartFavIcon(),
                      SizedBox(
                        height: 20.0 / 2,
                      ),
                      AddToCartAndBuy(product: product),
                    ],
                  ),
                ),
                ProductImageDetail(product: product),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
