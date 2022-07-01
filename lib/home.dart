import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Icon(
                  Icons.location_pin,
                  size: 20,
                  color: Colors.pink.shade300,
                ),
                const SizedBox(
                  width: 5,
                ),
                const Text(
                  'DLF Phase 1, Gurgaon',
                  style: TextStyle(
                      fontFamily: 'Open Sans',
                      fontWeight: FontWeight.w800,
                      fontSize: 17),
                ),
                const Spacer(),
                CircleAvatar(
                  radius: 15,
                  backgroundColor: Colors.pink.shade100,
                  backgroundImage: const NetworkImage(
                      'https://www.pngrepo.com/png/115231/512/user.png'),
                ),
                const SizedBox(
                  width: 5,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Material(
              elevation: 1,
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
              child: Container(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.pink.shade400,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        'Search for products, ingredients',
                        style: TextStyle(
                            fontFamily: 'Open Sans',
                            fontWeight: FontWeight.w500,
                            fontSize: 12,
                            color: Colors.grey.shade700),
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.teal.shade700, Colors.teal.shade400],
                      begin: const FractionalOffset(0.0, 0.0),
                      end: const FractionalOffset(0.9, 0.0),
                      stops: const [0.0, 1.0],
                      tileMode: TileMode.clamp),
                  borderRadius: BorderRadius.circular(15)),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Up to 25% off on',
                      style: TextStyle(
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.w900,
                          fontSize: 22,
                          color: Colors.white),
                    ),
                    const Text(
                      'healthy teas',
                      style: TextStyle(
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.w900,
                          fontSize: 22,
                          color: Colors.white),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: 200,
                      child: const Text(
                        'This everyday essential has Omega-3 fatty acis with a special',
                        style: TextStyle(
                            fontFamily: 'Open Sans',
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 13),
                      ),
                    ),
                    const Spacer(),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: 150,
                      decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: const [
                            Text(
                              'EXPLORE NOW ',
                              style: TextStyle(
                                  color: Colors.white, fontFamily: 'Open Sans'),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.arrow_forward,
                              color: Colors.white,
                              size: 19,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                homeCard(),
                homeCard(),
                homeCard(),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                homeCard(),
                homeCard(),
                homeCard(),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                homeCard(),
                homeCard(),
                homeCard(),
              ],
            )
          ],
        ),
      )),
    );
  }

  Widget homeCard() {
    return Material(
        color: Colors.white,
        elevation: 2,
        borderRadius: BorderRadius.circular(10),
        child: Container(
          height: 100,
          width: 100,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: const NetworkImage(
                              'https://i.vippng.com/png/small/45-450133_medicine-bottle-pills-medication-png-image-medicine-bottle.png'),
                          fit: BoxFit.cover)),
                ),
                const Spacer(),
                const Text(
                  'Heart Health',
                  style: TextStyle(
                      fontFamily: 'Open Sans',
                      fontSize: 13,
                      fontWeight: FontWeight.w500),
                )
              ],
            ),
          ),
        ));
  }
}
