import 'package:flutter/material.dart';
import 'package:netflix/src/components/cart_filme.dart';
import 'package:netflix/src/data/app_data.dart' as app_data;

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
        backgroundColor: Colors.black,
        body: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: ListView.separated(
            itemBuilder: (c, index1) {
              return Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      app_data.carroseis[index1].title,
                      style: const TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    height: 200,
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: ListView.separated(
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (_, index) {
                          return CartFilme(
                            filme: app_data.carroseis[index1].filmes[index],
                          );
                        },
                        separatorBuilder: (_, index) =>
                            const SizedBox(width: 10),
                        itemCount: app_data.carroseis[index1].filmes.length),
                  ),
                ],
              );
            },
            separatorBuilder: (_, index) => const SizedBox(height: 20),
            itemCount: app_data.carroseis.length,
          ),
        ),
      ),
    );
  }
}
