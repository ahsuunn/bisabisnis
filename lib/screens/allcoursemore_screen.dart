import 'package:bisabisnis/screens/course_screen.dart';
import 'package:bisabisnis/screens/home_screen.dart';
import 'package:bisabisnis/screens/navigation_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

List linkmateri = [
  CourseScreen('Makanan & Minuman'),
  const NavigationPage(),
  const NavigationPage(),
  const NavigationPage(),
  const NavigationPage(),
  const NavigationPage(),
  const NavigationPage(),
];

List imgList = [
  'Makanan & Minuman',
  'Fashion',
  'Jasa',
  'Manufaktur',
  'Kreatif & Seni',
  'Pertanian & Peternakan',
  'Lingkungan'
];

// ignore: must_be_immutable
class AllcoursemoreScreen extends StatefulWidget {
  const AllcoursemoreScreen({super.key});

  @override
  _AllcoursemoreScreenState createState() => _AllcoursemoreScreenState();
}

class _AllcoursemoreScreenState extends State<AllcoursemoreScreen> {
  int currentIndex = 1;
  final screens = [
    const HomePage(),
    const AllcoursemoreScreen(),
    const HomePage(),
    const HomePage(),
    const HomePage(),
  ];

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 020, left: 15, right: 15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "BisaKelas",
                      style: GoogleFonts.montserrat(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    const SizedBox(height: 50),
                    Material(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const NavigationPage()));
                        },
                        child: Container(
                          margin: const EdgeInsets.only(top: 0, right: 10),
                          child: const Icon(
                            Icons.home,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                GridView.builder(
                  padding: const EdgeInsets.only(bottom: 20),
                  itemCount: imgList.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1,
                    childAspectRatio:
                        (MediaQuery.of(context).size.height - 50 - 25) /
                            (4 * 95),
                    mainAxisSpacing: 15,
                    crossAxisSpacing: 10,
                  ),
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => linkmateri[index],
                            ));
                      },
                      child: Container(
                        padding: const EdgeInsets.only(left: 15, top: 10),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("images/${imgList[index]}.jpg"),
                              fit: BoxFit.fill),
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white30,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 140),
                            Text(
                              imgList[index],
                              style: GoogleFonts.montserrat(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
