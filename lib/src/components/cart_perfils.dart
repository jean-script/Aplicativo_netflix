import 'package:flutter/material.dart';
import 'package:netflix/src/models/perfil_model.dart';
import 'package:netflix/src/routes/base.dart';

class CartPerfil extends StatelessWidget {
  final PerfilModel perfil;
  const CartPerfil({super.key, required this.perfil});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (c) => const PageBase()));
      },
      child: Container(
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.transparent,
        ),
        child: Column(
          children: [
            Expanded(
              child: Container(
                height: 125.0,
                width: 125.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(perfil.image),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
              ),
              child: Text(
                perfil.name,
                style: const TextStyle(
                  color: Colors.grey,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
