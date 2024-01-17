import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class JonathanApplyPage extends StatefulWidget {
  const JonathanApplyPage({super.key});

  @override
  State<JonathanApplyPage> createState() => _JonathanApplyPageState();
}

class _JonathanApplyPageState extends State<JonathanApplyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Ajukan Investor',
          style: GoogleFonts.montserrat(
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        leading: const BackButton(
          color: Colors.white,
        ),
      ),

      // body
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 15),
            Text(
              'Jonathan',
              style: GoogleFonts.montserrat(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: Colors.blueAccent,
              ),
            ),
            Row(
              children: [
                Text(
                  'CFO BukaModal Indonesia',
                  style: GoogleFonts.montserrat(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            SizedBox(
              height: 60,
              width: MediaQuery.of(context).size.width * 0.9,
              child: Row(
                children: [
                  Expanded(
                    child: (Text(
                      'Form ini merupakan persyaratan yang harus diunggah dan divalidasi. Harap isi dengan benar dan perhatikan petunjuknya!',
                      softWrap: true,
                      style: GoogleFonts.montserrat(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    )),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),

            // Daftar Catalog
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Proposal Bisnis',
                      style: GoogleFonts.montserrat(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      'Proposal Bisnis BukaModal.docx',
                      style: GoogleFonts.montserrat(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
                const Spacer(),
                const Icon(
                  Icons.check_circle_sharp,
                  color: Colors.green,
                  size: 30,
                ),
              ],
            ),
            const Divider(
              color: Color.fromARGB(255, 76, 76, 76),
            ),

            // Daftar Catalog
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Daftar Catalog',
                      style: GoogleFonts.montserrat(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      '',
                      style: GoogleFonts.montserrat(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
                const Spacer(),
                const Icon(
                  Icons.add_circle_outline,
                  color: Colors.grey,
                  size: 30,
                ),
              ],
            ),
            const Divider(
              color: Color.fromARGB(255, 76, 76, 76),
            ),

            // Business Model Canvas
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Business Model Canvas',
                      style: GoogleFonts.montserrat(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      '',
                      style: GoogleFonts.montserrat(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
                const Spacer(),
                const Icon(
                  Icons.add_circle_outline,
                  color: Colors.grey,
                  size: 30,
                ),
              ],
            ),
            const Divider(
              color: Color.fromARGB(255, 76, 76, 76),
            ),

            // Ajuan Modal
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ajuan Modal',
                      style: GoogleFonts.montserrat(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      '',
                      style: GoogleFonts.montserrat(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
                const Spacer(),
                const Icon(
                  Icons.add_circle_outline,
                  color: Colors.grey,
                  size: 30,
                ),
              ],
            ),
            const Divider(
              color: Color.fromARGB(255, 76, 76, 76),
            ),

            const SizedBox(height: 30),

            // Submit
            Container(
              height: 40,
              width: MediaQuery.of(context).size.width * 0.4,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Submit',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.montserrat(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
