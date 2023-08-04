import 'package:flutter/material.dart';

class CartFilme extends StatelessWidget {
  final Map<String, String> filme;
  const CartFilme({super.key, required this.filme});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 140,
      color: Colors.transparent,
      child: Stack(
        children: [
          Container(
            height: 200,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: NetworkImage(
                  filme['img'].toString(),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
