import 'package:flutter/material.dart';
import 'cafedetail.dart';
import 'data.dart';

class CafeList extends StatefulWidget {
  @override
  _CafeListState createState() => _CafeListState();
}

class _CafeListState extends State<CafeList> {
  String selectedCategory = 'All';
  TextEditingController searchController = TextEditingController();

  bool cafeBelongsToCategory(Cafe cafe, String category) {
    Map<String, List<String>> categoryMap = {
      'Garden Cafe': [
        'Flava Cafe',
        'Oase Cafe & Literacy',
        'Toeman Cafe',
        'Capella Coffee & Eatery',
        'Gartenhaus Co'
      ],
      'Indoor Smoking': [
        'Nakoa Cafe',
        'Kopi Studio 24',
        'Teras Kinoi',
        'Fertisoil Coffee',
        '11:12 Kopi'
      ],
      'Rooftop': [
        'Pesen Kopi Plus',
        'Las Kopi',
        'Labcoffee.eatery',
        'Atap Sore Coffee & Co-Working Space',
        'The Weekend Cafe & Workspace'
      ],
    };

    return categoryMap[category]?.contains(cafe.name) ?? false;
  }

  Widget buildCategoryIcon(String category, IconData icon) {
    return InkWell(
      onTap: () {
        setState(() {
          selectedCategory = category;
        });
      },
      child: Column(
        children: [
          Icon(
            icon,
            size: 30.0,
            color: selectedCategory == category
                ? const Color(0xFF8A5334)
                : Colors.black,
          ),
          Text(
            category,
            style: TextStyle(fontFamily: 'Poppins', color: Colors.black),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    List<Cafe> cafes = [
      Cafe(
        name: '11:12 Kopi',
        area: 'Mojolangu',
        rating: 4.6,
        description:
            '11:12 adalah kafe yang berlokasi di Mojolangu, Malang. Tempat ini dikenal dengan suasana yang cozy dan penuh kreativitas. Dengan desain interior yang modern dan menu kopi yang beragam, 11:12 menjadi tempat yang populer di kalangan pecinta kopi. Mereka menawarkan berbagai jenis kopi, dari yang tradisional hingga inovatif. Harga kopi di 11:12 juga cukup terjangkau, membuatnya menjadi pilihan yang baik bagi semua kalangan. Selain kopi, mereka juga menyajikan beberapa pilihan makanan ringan dan kue yang lezat. Dengan rating 4.6, 11:12 adalah tempat yang sempurna untuk bersantai dan menikmati waktu luang.',
        image: '11.12.png',
        cost: '20.000+',
        openday: 'Setiap Hari',
        openhour: '08.00-00.00',
      ),
      Cafe(
        name: 'Gartenhaus Co',
        area: 'Jatimulyo',
        rating: 4.5,
        description:
            'Gartenhaus Co adalah kafe yang terletak di Jatimulyo, Malang. Dengan suasana yang tenang dan ramah, Gartenhaus Co menjadi tempat yang ideal untuk bertemu teman atau bekerja sambil menikmati secangkir kopi. Mereka menawarkan berbagai jenis kopi pilihan dan makanan ringan yang lezat. Dengan rating 4.5, Gartenhaus Co adalah tempat yang populer di kalangan warga setempat dan pengunjung. Selain itu, mereka juga menyediakan Wi-Fi gratis dan area co-working untuk mereka yang ingin bekerja di sana.',
        image: 'Gartenhaus.jpeg',
        cost: '14.000+',
        openday: 'Setiap Hari',
        openhour: '10.00-23.00',
      ),
      Cafe(
        name: 'Pesen Kopi Plus',
        area: 'Penanggungan',
        rating: 4.6,
        description:
            'Pesen Kopi Plus adalah kafe yang nyaman terletak di Penanggungan, Malang. Dikenal dengan suasana yang hangat dan ramah, Pesen Kopi Plus menjadi tempat favorit di kalangan warga setempat. Mereka menyajikan berbagai varian kopi dari yang tradisional hingga yang modern. Menu makanan mereka juga beragam, mencakup pilihan yang cocok untuk sarapan atau makan siang ringan. Dengan rating 4.6, Pesen Kopi Plus menjadi destinasi yang sempurna untuk bersantai sambil menikmati hidangan lezat.',
        image: 'PesenKopi.jpeg',
        openday: 'Setiap Hari',
        cost: '15.000+',
        openhour: '07.00-23.00',
      ),
      Cafe(
        name: 'Las Kopi',
        area: 'Merjosari',
        rating: 4.0,
        description:
            'Las Kopi adalah kafe yang bersemangat terletak di Merjosari, Malang. Dengan desain interior yang eklektik dan nuansa yang hidup, Las Kopi menciptakan pengalaman yang unik bagi para pengunjung. Mereka menawarkan berbagai jenis kopi dari biji berkualitas tinggi. Menu makanan mereka juga layak dicoba, dengan pilihan yang cocok untuk semua selera. Las Kopi buka 24 jam, sehingga Anda dapat menikmati suasana kafe ini kapan saja. Meskipun memiliki rating 4.0, Las Kopi tetap menjadi destinasi populer di Merjosari.',
        image: 'LasKopi.jpg',
        cost: '10.000+',
        openday: 'Setiap Hari',
        openhour: '24 jam',
      ),
      Cafe(
        name: 'Capella Coffee & Eatery',
        area: 'Merjosari',
        rating: 4.8,
        description:
            'Capella Coffee & Eatery adalah kafe yang terletak di Merjosari, Malang. Dengan suasana yang hangat dan pelayanan yang ramah, Capella Coffee & Eatery menjadi tempat yang sempurna untuk berkumpul dengan teman atau keluarga. Mereka menawarkan berbagai jenis kopi dan minuman segar. Menu makanan mereka mencakup hidangan yang lezat dan variasi camilan ringan. Dengan rating 4.8, Capella Coffee & Eatery menjadi salah satu pilihan utama di Merjosari.',
        image: 'Capella.png',
        cost: '15.000+',
        openday: 'Setiap Hari',
        openhour: '09.00-23.00',
      ),
      Cafe(
        name: 'Flava Cafe',
        area: 'Tlogo Joyo',
        rating: 4.0,
        description:
            'Flava Cafe adalah kafe yang terletak di Tlogo Joyo, Malang. Dengan desain interior yang modern dan menu yang beragam, Flava Cafe menarik pengunjung dari berbagai kalangan. Mereka dikenal dengan kopi berkualitas tinggi dan berbagai varian rasa. Selain itu, Flava Cafe juga menyajikan hidangan lezat dan menyegarkan. Meskipun memiliki rating 4.0, Flava Cafe tetap menjadi destinasi yang populer di Tlogo Joyo.',
        image: 'FlavaCafe.jpg',
        cost: '17.000+',
        openday: 'Setiap Hari',
        openhour: '08.00-22.00',
      ),
      Cafe(
        name: 'Kopi Studio 24',
        area: 'Karangbesuki',
        rating: 4.2,
        description:
            'Kopi Studio 24 adalah kafe artistik yang berlokasi di Karangbesuki, Malang. Dengan desain interior yang kreatif dan suasana yang inspiratif, Kopi Studio 24 menawarkan pengalaman unik bagi para pengunjung. Mereka memiliki berbagai jenis kopi dan minuman kreatif. Tempat ini juga berfungsi sebagai ruang kreatif bagi seniman lokal, dengan pameran karya seni dan acara budaya. Dengan rating 4.2, Kopi Studio 24 menjadi destinasi yang menarik untuk pecinta seni dan kopi.',
        image: 'KopiStudio.jpg',
        cost: '10.000+',
        openday: 'Setiap Hari',
        openhour: '24 Jam',
      ),
      Cafe(
        name: 'Nakoa Cafe',
        area: 'Mojolangu',
        rating: 4.8,
        description:
            'Nakoa Cafe adalah kafe yang bersemangat di Mojolangu, Malang. Dengan nuansa Hawaii yang unik, Nakoa Cafe menciptakan pengalaman yang berbeda bagi para pengunjung. Mereka menawarkan berbagai jenis kopi tropis dan minuman menyegarkan. Desain interior yang menarik membuat Nakoa Cafe menjadi tempat yang instagrammable. Dengan rating 4.8, Nakoa Cafe menjadi salah satu destinasi favorit di Mojolangu.',
        image: 'NakoaCafe.jpg',
        cost: '18.000+',
        openday: 'Setiap Hari',
        openhour: '09.00-00.00',
      ),
      Cafe(
        name: 'Oase Cafe & Literacy',
        area: 'Merjosari',
        rating: 4.4,
        description:
            'Oase Cafe & Literacy adalah kafe yang berlokasi di Merjosari, Malang. Tempat ini tidak hanya menawarkan kopi berkualitas tinggi, tetapi juga menyediakan ruang baca bagi para pengunjung. Suasana yang tenang dan sajian berkualitas membuat Oase Cafe & Literacy menjadi destinasi yang unik. Mereka menawarkan berbagai jenis kopi dan minuman literasi yang menyegarkan. Dengan rating 4.4, Oase Cafe & Literacy adalah tempat yang cocok untuk pecinta buku dan kopi.',
        image: 'OaseCafe.jpg',
        cost: '25.000+',
        openday: 'Setiap Hari',
        openhour: '10.00-00.00',
      ),
      Cafe(
        name: 'Teras Kinoi',
        area: 'Merjosari',
        rating: 4.8,
        description:
            'Teras Kinoi adalah kafe yang berlokasi di Merjosari, Malang. Dengan desain bergaya teras dan pemandangan yang indah, Teras Kinoi menawarkan pengalaman bersantai yang unik. Mereka menyajikan berbagai jenis kopi dan makanan ringan yang lezat. Tempat ini sangat cocok untuk menikmati secangkir kopi sambil menikmati keindahan sekitarnya. Dengan rating 4.8, Teras Kinoi menjadi destinasi populer di Merjosari.',
        image: 'TerasKinoi.jpg',
        cost: '15.000+',
        openday: 'Setiap Hari',
        openhour: '10.00-00.00',
      ),
      Cafe(
        name: 'Toeman Cafe',
        area: 'Joyogrand',
        rating: 4.5,
        description:
            'Toeman Cafe adalah kafe yang berlokasi di Joyogrand, Malang. Dikenal dengan keramahannya yang hangat, Toeman Cafe menjadi tempat favorit di kalangan warga setempat. Mereka menawarkan beragam pilihan kopi tradisional dan modern. Desain interior yang nyaman membuat Toeman Cafe menjadi tempat yang ramah untuk bersantai. Dengan rating 4.5, Toeman Cafe menjadi destinasi yang menyenangkan untuk menikmati kopi dan suasana hangat.',
        image: 'ToemanCafe.jpg',
        cost: '16.000+',
        openday: 'Setiap Hari',
        openhour: '24 Jam',
      ),
      Cafe(
        name: 'Atap Sore Coffee & Co-Working Space',
        area: 'Mojolangu',
        rating: 4.8,
        description:
            'Atap Sore Coffee & Co-Working Space adalah kafe yang berlokasi di Mojolangu, Malang. Dengan suasana yang santai dan area co-working yang nyaman, Atap Sore menjadi destinasi populer bagi pekerja lepas dan pengusaha. Mereka menawarkan berbagai jenis kopi dan makanan ringan. Tempat ini memiliki suasana yang cocok untuk rapat bisnis atau pertemuan santai. Dengan rating 4.8, Atap Sore Coffee & Co-Working Space adalah tempat yang sesuai untuk bekerja dan bersantai.',
        image: 'AtapSore.jpg',
        cost: '18.000+',
        openday: 'Setiap Hari',
        openhour: '10.00-22.00',
      ),
      Cafe(
        name: 'Labcoffee.eatery',
        area: 'Landungsari',
        rating: 4.6,
        description:
            'Labcoffee.eatery adalah kafe yang terletak di Landungsari, Malang. Dengan desain interior yang modern dan menu kopi yang beragam, Labcoffee.eatery menarik pengunjung dari berbagai kalangan. Mereka menawarkan suasana yang nyaman untuk bersantai dan menikmati waktu luang. Labcoffee.eatery juga menyajikan beberapa pilihan makanan ringan dan camilan. Dengan rating 4.6, Labcoffee.eatery adalah destinasi yang cocok untuk pertemuan santai atau sekadar menikmati kopi berkualitas.',
        image: 'Labcoffee.eatery.jpg',
        cost: '20.000+',
        openday: 'Setiap Hari',
        openhour: '09.00-23.00',
      ),
      Cafe(
        name: 'The Weekend Cafe & Workspace',
        area: 'Tegalgondo',
        rating: 5.0,
        description:
            'The Weekend Cafe & Workspace adalah kafe yang terletak di Tegalgondo, Malang. Dikenal dengan suasana yang santai dan cocok untuk bersantai, The Weekend Cafe & Workspace menjadi tempat favorit di kalangan pecinta kopi. Mereka menawarkan berbagai jenis kopi dan minuman segar. Tempat ini juga memiliki area kerja bersama yang nyaman bagi mereka yang ingin bekerja di sana. Dengan rating 5.0, The Weekend Cafe & Workspace adalah destinasi yang cocok untuk menghabiskan akhir pekan.',
        image: 'TheWeekend.jpeg',
        cost: '17.000+',
        openday: 'Setiap Hari',
        openhour: '09.00-23.00',
      ),
      Cafe(
        name: 'Fertisoil Coffee',
        area: 'Mojolangu',
        rating: 4.7,
        description:
            'Fertisoil Coffee adalah kafe yang berlokasi di Mojolangu, Malang. Dengan desain interior yang modern dan atmosfir yang menyenangkan, Fertisoil Coffee menjadi tempat yang ramai dikunjungi. Mereka menawarkan berbagai jenis kopi dan makanan ringan. Tempat ini cocok untuk pertemuan santai dengan teman atau sekadar bersantai sambil menikmati kopi berkualitas. Dengan rating 4.7, Fertisoil Coffee adalah tempat yang nyaman untuk bersantai.',
        image: 'Fertisoil.jpg',
        cost: '16.000+',
        openday: 'Setiap Hari',
        openhour: '08.00-22.00',
      ),
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Cafe',
          style: TextStyle(fontFamily: 'Poppins'),
        ),
        backgroundColor: const Color(0xFF8A5334),
      ),
      body: Column(
        children: [
          const SizedBox(height: 10.0),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.location_on),
                const SizedBox(width: 5.0),
                Text(
                  'Lowokwaru, Malang',
                  style: TextStyle(fontFamily: 'Poppins'),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.grey[200],
              ),
              child: TextField(
                controller: searchController,
                onChanged: (value) {
                  setState(() {});
                },
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  hintText: 'Cari nama kafe...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: buildCategoryIcon('All', Icons.all_inclusive),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: buildCategoryIcon('Garden Cafe', Icons.nature_people),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: buildCategoryIcon('Indoor Smoking', Icons.home),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: buildCategoryIcon('Rooftop', Icons.layers),
              ),
            ],
          ),
          const SizedBox(height: 10.0),
          Expanded(
            child: ListView.builder(
              itemCount: cafes.length,
              itemBuilder: (context, index) {
                Cafe cafe = cafes[index];

                bool categoryCondition = selectedCategory == 'All' ||
                    cafeBelongsToCategory(cafe, selectedCategory);

                bool searchCondition = searchController.text.isEmpty ||
                    cafe.name
                        .toLowerCase()
                        .contains(searchController.text.toLowerCase());

                if (categoryCondition && searchCondition) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CafeDetail(cafe: cafe),
                        ),
                      );
                    },
                    child: Card(
                      elevation: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(9.0),
                        child: Stack(
                          children: [
                            Column(
                              children: [
                                ListTile(
                                  leading: SizedBox(
                                    width: 80.0,
                                    height: 200.0,
                                    child: Image.asset(
                                      'assets/${cafe.image}',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                  title: Text(
                                    cafe.name,
                                    style: TextStyle(fontFamily: 'Poppins'),
                                  ),
                                  subtitle: Text(
                                    cafe.area,
                                    style: TextStyle(fontFamily: 'Poppins'),
                                  ),
                                ),
                              ],
                            ),
                            Positioned(
                              top: 8.0,
                              right: 8.0,
                              child: Row(
                                children: [
                                  Text(
                                    '${cafe.rating}',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.bold,
                                      fontFamily: 'Poppins',
                                    ),
                                  ),
                                  Icon(
                                    Icons.star,
                                    color: Colors.yellow,
                                    size: 14.0,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  );
                } else {
                  return Container();
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
