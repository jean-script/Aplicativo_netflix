import 'package:flutter/material.dart';
import 'package:netflix/src/pages/home/home_page.dart';

import 'package:netflix/src/data/app_data.dart';

class PageBase extends StatefulWidget {
  const PageBase({super.key});

  @override
  State<PageBase> createState() => _PageBaseState();
}

class _PageBaseState extends State<PageBase> {
  int currentPageIndex = 0;
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Container(
          width: 30,
          height: 50,
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                  'https://img.freepik.com/icones-gratis/netflix_318-566093.jpg'),
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search_sharp,
            ),
            iconSize: 40,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 3),
            child: Container(
              width: 50,
              height: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                image: DecorationImage(
                  image: AssetImage(perfil1.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ],
      ),
      //
      body: PageView(
        controller: pageController,
        children: [
          const HomePage(),
          Container(
            color: Colors.red,
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        mouseCursor: SystemMouseCursors.click,
        iconSize: 34,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey.shade700,
        backgroundColor: Colors.black,
        onTap: (index) {
          setState(() {
            currentPageIndex = index;
            pageController.jumpToPage(index);
          });
        },
        currentIndex: currentPageIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.tab),
            label: 'Filmes',
          ),
        ],
      ),
    );
  }
}
