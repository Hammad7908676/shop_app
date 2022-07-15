import 'package:flutter/material.dart';
import 'package:shop_app/models/products.dart';

class ProductImageDetail extends StatelessWidget {
  const ProductImageDetail({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Most Loveble Toys",
            style: TextStyle(color: Colors.white),
          ),
          Text(
            product.title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 29,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Row(
            children: [
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: "Price\n"),
                    TextSpan(
                      text: "\Rs:${product.price}",
                      style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(width: 20.0),
              Expanded(
                child: Image.asset(
                  product.image,
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
