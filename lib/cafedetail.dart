import 'package:flutter/material.dart';
import 'data.dart';

class CafeDetail extends StatelessWidget {
  final Cafe cafe;

  const CafeDetail({Key? key, required this.cafe}) : super(key: key);

  Widget buildMenuItem(String imagePath, String menuName) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage('assets/$imagePath'),
        ),
        const SizedBox(height: 5),
        Text(
          menuName,
          style: TextStyle(
            fontFamily: 'Poppins',
            color: Color.fromARGB(255, 8, 8, 8),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    String cafeImageFileName = cafe.image.replaceAll(' ', '');

    return Scaffold(
      appBar: AppBar(
        title: Text('Cafe Detail', style: TextStyle(fontFamily: 'Poppins')),
        backgroundColor: const Color(0xFF8A5334),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/$cafeImageFileName'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    cafe.name,
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Icon(Icons.calendar_today,
                              color: Color.fromARGB(
                                  255, 0, 0, 0)), // Use the button color
                          const SizedBox(height: 5),
                          Text(
                            'Hari Buka',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color.fromARGB(
                                  255, 0, 0, 0), // Use the button color
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            cafe.openday,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color.fromARGB(
                                  255, 0, 0, 0), // Use the button color
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.attach_money,
                              color: Color.fromARGB(
                                  255, 0, 0, 0)), // Use the button color
                          const SizedBox(height: 5),
                          Text(
                            'Range Harga',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color.fromARGB(
                                  255, 0, 0, 0), // Use the button color
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            'Rp ${cafe.cost}',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color.fromARGB(
                                  255, 0, 0, 0), // Use the button color
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.access_time,
                              color: Color.fromARGB(
                                  255, 0, 0, 0)), // Use the button color
                          const SizedBox(height: 5),
                          Text(
                            'Waktu Buka',
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color.fromARGB(
                                  255, 0, 0, 0), // Use the button color
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          const SizedBox(height: 5),
                          Text(
                            cafe.openhour,
                            style: TextStyle(
                              fontFamily: 'Poppins',
                              color: Color.fromARGB(
                                  255, 0, 0, 0), // Use the button color
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      cafe.description,
                      style: TextStyle(fontFamily: 'Poppins'),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        const SizedBox(height: 20.0),
                        Text(
                          'Menu',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: Color.fromARGB(255, 8, 8, 8),
                          ),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(height: 10.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            buildMenuItem(
                                'americano.jpeg', 'Americano \n  Rp15.000'),
                            const SizedBox(width: 20.0),
                            buildMenuItem(
                                'espresso.jpeg', 'Espresso \nRp10.000'),
                            const SizedBox(width: 20.0),
                            buildMenuItem(
                                'cappucino.jpeg', 'Cappucino \n  Rp17.000'),
                          ],
                        ),
                        const SizedBox(height: 10.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            buildMenuItem(
                                'jasminetea.jpeg', 'Jasmine Tea \n   Rp13.000'),
                            const SizedBox(width: 20.0),
                            buildMenuItem(
                                'lemontea.jpeg', 'Lemon Tea \n  Rp14.000'),
                            const SizedBox(width: 20.0),
                            buildMenuItem('butterflytea.jpeg',
                                'Butterfly Tea \n   Rp16.000'),
                          ],
                        ),
                        const SizedBox(height: 10.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            buildMenuItem('matchalatte.jpeg',
                                'Matcha Latte \n   Rp20.000'),
                            const SizedBox(width: 20.0),
                            buildMenuItem(
                                'chocolatte.jpeg', 'Choco Latte \n  Rp20.000'),
                            const SizedBox(width: 20.0),
                            buildMenuItem('redvelvetlatte.jpeg',
                                'Red Velvet \n Rp22.000'),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => FullScreenImagePage(
                            imagePath: 'assets/nav.jpg',
                          ),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: const Color(0xFF7C503E), // Background color
                      onPrimary: Colors.white, // Text color
                      elevation: 5,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    child: Text(
                      'Dapatkan Arah',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class FullScreenImagePage extends StatelessWidget {
  final String imagePath;

  const FullScreenImagePage({Key? key, required this.imagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
