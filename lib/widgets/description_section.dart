import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DescriptionSection extends StatelessWidget {
  const DescriptionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10),
      child: Column(
        children: [
          const SizedBox(height: 40),
          Text(
            "Coming Soon!",
            style: GoogleFonts.montserrat(
              fontSize: 26,
              color: Colors.white,
            ),
            textAlign: TextAlign.justify,
          ),
          const SizedBox(height: 40),
        ],
      ),
    );
  }
}
