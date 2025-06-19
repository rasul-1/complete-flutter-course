import 'package:ecommerce_app/src/constants/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class ShoppingCartItemShimmer extends StatelessWidget {
  const ShoppingCartItemShimmer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: Sizes.p8),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(Sizes.p16),
          child: Shimmer.fromColors(
            baseColor: Colors.grey.shade300,
            highlightColor: Colors.grey.shade100,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Placeholder for image
                Container(
                  width: 80,
                  height: 80,
                  color: Colors.white,
                ),
                const SizedBox(width: Sizes.p16),
                // Placeholder for text and controls
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(height: 20, color: Colors.white),
                      const SizedBox(height: 16),
                      Container(height: 40, width: 80, color: Colors.white),
                      const SizedBox(height: 16),
                      Container(height: 40, width: 150, color: Colors.white),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}