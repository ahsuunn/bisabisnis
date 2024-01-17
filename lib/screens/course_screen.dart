import 'package:bisabisnis/widgets/description_section.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/videos_section.dart';

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
class CourseScreen extends StatefulWidget {
  String img;
  CourseScreen(this.img, {super.key});
  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  bool isVideosSection = true;
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: ListView(
          children: [
            AppBar(
              shadowColor: Colors.white,
              foregroundColor: Colors.white,
              backgroundColor: Colors.black,
              elevation: 0,
              title: Text(
                "BisaKelas",
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage("images/Makanan & Minuman.jpg"),
                    fit: BoxFit.fill),
                borderRadius: BorderRadius.circular(5),
                color: Colors.white30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 140),
                  Text(
                    "Makanan & Minuman",
                    style: GoogleFonts.montserrat(
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Text(
              "Deskripsi",
              style: GoogleFonts.montserrat(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              "Selamat datang di kelas Food and Beverage, tempat di mana Anda akan diajak untuk menjelajahi dunia yang dimanis dan penuh potensi di industri kuliner. Dalam kelas ini, kami akan menyajikan serangkaian materi yang dirancang khusus untuk memberikan pemahaman mendalam tentang aspek-aspek kunci dalam mengelola bisnis makanan dan minuman.",
              style: GoogleFonts.montserrat(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 0, 0, 0),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Material(
                    // if isVideoSection is true then that color will be on button and if condition is false then that color will be shown on button but with some opacity.
                    color: isVideosSection
                        ? const Color.fromARGB(255, 56, 102, 255)
                        : const Color.fromARGB(255, 56, 102, 255).withOpacity(0.6),
                    borderRadius: BorderRadius.circular(5),
                    child: InkWell(
                      onTap: () {
                        // change value of isVideosSection
                        setState(() {
                          isVideosSection = true;
                        });
                      },
                      child: Container(
                        padding:
                            const EdgeInsets.symmetric(vertical: 5, horizontal: 40),
                        child: Text(
                          "VIDEO",
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Material(
                    color: isVideosSection
                        ? const Color.fromARGB(255, 56, 102, 255).withOpacity(0.5)
                        : const Color.fromARGB(255, 56, 102, 255),
                    borderRadius: BorderRadius.circular(5),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isVideosSection = false;
                        });
                      },
                      child: Container(
                        padding:
                            const EdgeInsets.symmetric(vertical: 5, horizontal: 50),
                        child: Text(
                          "CATATAN",
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // 2 different section for videos section and description section
            const SizedBox(height: 10),
            // if isVideosSection condition is true then VideoSection will be shown and if condition is false then it means DescriptionSection will be shown.
            isVideosSection ? const VideoSection() : const DescriptionSection(),
          ],
        ),
      ),
    );
  }
}
