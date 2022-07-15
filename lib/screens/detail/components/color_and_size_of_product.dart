import 'package:flutter/material.dart';
import 'package:shop_app/constraints.dart';
import 'package:shop_app/models/products.dart';

class ColorsAndSizeOfProduct extends StatelessWidget {
  const ColorsAndSizeOfProduct({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Color"),
              Row(
                children: [
                  ProductColorSelection(
                    color: Color(0xFF356C95),
                    isselected: true,
                  ),
                  ProductColorSelection(
                    color: Color(0xFFF8C078),
                  ),
                  ProductColorSelection(
                    color: Color(0xFFA29B9B),
                  ),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              style: TextStyle(color: MyTextColor),
              children: [
                TextSpan(
                  text: "Size\n",
                ),
                TextSpan(
                  text: "${product.size} cm",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class ProductColorSelection extends StatelessWidget {
  final Color color;
  final bool isselected;
  const ProductColorSelection({
    Key? key,
    required this.color,
    this.isselected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 20.0 / 4,
        right: 20.0 / 2,
      ),
      padding: EdgeInsets.all(2.5),
      width: 24,
      height: 48,
      decoration: BoxDecoration(
        border: Border.all(
          color: isselected ? color : Colors.transparent,
        ),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
        ),
      ),
    );
  }
}
