import 'package:flutter/material.dart';
import 'package:netflix/src/components/cart_perfils.dart';
import 'package:netflix/src/data/app_data.dart' as app_data;

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Netflix',
          style: TextStyle(
            color: Colors.red.shade600,
            fontSize: 40,
          ),
        ),
        centerTitle: true,
        actions: [
          SafeArea(
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.edit, size: 30),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.black.withAlpha(10),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 50, 10, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(0, 10, 0, 20),
              child: Text(
                'Quem esta assistindo?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: SizedBox(
                height: 480,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 20,
                  ),
                  itemCount: app_data.perfils.length,
                  itemBuilder: (_, index) {
                    return CartPerfil(
                      perfil: app_data.perfils[index],
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
