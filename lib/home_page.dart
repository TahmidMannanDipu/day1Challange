import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xfff5f3fc),
        appBar: AppBar(
          backgroundColor: const Color(0xffc5b8f1),
          elevation: 0,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
              size: 35,
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home_rounded), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: 'Favourite'),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle), label: 'Profile'),
          ],
          backgroundColor: const Color(0xffc5b8f1),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
                color: Color(0xffeceafa),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 16, right: 16, top: 16, bottom: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Find Your',
                      style: TextStyle(
                          color: Color(0xff404040),
                          fontSize: 40,
                          fontWeight: FontWeight.w400),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    const Text(
                      'Inspiration',
                      style: TextStyle(
                          color: Color(0xff404040),
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: const Color(0xffc5b8f1),
                            ),
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(16)),
                        child: const TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              prefixIcon: Icon(
                                Icons.search_rounded,
                                color: Colors.grey,
                              ),
                              hintText: 'Search You are looking for',
                              hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400)),
                        ))
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 16.0, top: 16),
              child: Text(
                'Promo Today',
                style: TextStyle(
                    color: Color(0xff404040),
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Container(
              padding: const EdgeInsets.only(left: 16.0),
              height: 200,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  promoCard('assets/images/one.jpg'),
                  promoCard('assets/images/two.jpg'),
                  promoCard('assets/images/three.jpg'),
                  promoCard('assets/images/four.jpg'),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16),
              child: Container(
                height: 220,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.red,
                  image: const DecorationImage(
                    image: AssetImage(
                      'assets/images/three.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                  gradient: LinearGradient(colors: [
                    Colors.black87.withOpacity(.8),
                    Colors.black87.withOpacity(.2),
                  ], stops: const [
                    .1,
                    .9
                  ], begin: Alignment.bottomRight),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

Widget promoCard(image) {
  return AspectRatio(
    aspectRatio: 2.4 / 3,
    child: Container(
      margin: const EdgeInsets.only(right: 16),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.0),
          color: Colors.orange,
          image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
          gradient: LinearGradient(colors: [
            Colors.black87.withOpacity(.8),
            Colors.black87.withOpacity(.1),
          ], stops: const [
            .1,
            .9
          ], begin: Alignment.bottomRight)),
    ),
  );
}
