import "dart:ui";

import "package:bisabisnis/models/membership_model.dart";
import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class MembershipPage extends StatefulWidget {
  const MembershipPage({super.key});

  @override
  State<MembershipPage> createState() => _MembershipPageState();
}

class _MembershipPageState extends State<MembershipPage> {
  List<MembershipModel> membership = [];

  void _getMembership() {
    membership = MembershipModel.getMembership();
  }

  List tinggi = [
    '210',
  ];

  @override
  Widget build(BuildContext context) {
    _getMembership();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(0, 0, 0, 1),
        leading: const BackButton(color: Colors.white),
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3.0),
              child: Text(
                "Pilih Paket Berlangganan",
                style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w700),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),

      // body
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              Container(
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 3,
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        SizedBox(height: 15),
                        Container(
                          height: membership[index].height,
                          width: MediaQuery.of(context).size.width * 0.8,
                          decoration: BoxDecoration(
                            gradient: RadialGradient(
                              colors: [
                                membership[index].boxColor,
                                membership[index].boxColor.withAlpha(200),
                              ],
                              radius: 1,
                            ),
                            boxShadow: [BoxShadow(blurRadius: 10)],
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Column(
                              children: [
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 0.0),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          membership[index].name,
                                          style: GoogleFonts.montserrat(
                                            fontSize: 26,
                                            fontWeight: FontWeight.w700,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(top: 5),
                                        child: Icon(
                                          membership[index].iconData1,
                                          color: Colors.blueAccent,
                                          size: 30,
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            membership[index].title_desc1,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 18,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            membership[index].desc1,
                                            style: GoogleFonts.montserrat(
                                              fontSize: 12,
                                              color: Colors.white,
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(top: 5),
                                        child: Icon(
                                          membership[index].iconData2,
                                          color: Colors.blueAccent,
                                          size: 30,
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            membership[index].title_desc2,
                                            style: GoogleFonts.montserrat(
                                                fontSize: 18,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            membership[index].desc2,
                                            style: GoogleFonts.montserrat(
                                              fontSize: 12,
                                              color: Colors.white,
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(top: 5),
                                        child: Icon(
                                          membership[index].iconData3,
                                          color: Colors.blueAccent,
                                          size: 30,
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            membership[index].title_desc3 ?? '',
                                            style: GoogleFonts.montserrat(
                                                fontSize: 18,
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600),
                                          ),
                                          Text(
                                            membership[index].desc3 ?? '',
                                            style: GoogleFonts.montserrat(
                                              fontSize: 12,
                                              color: Colors.white,
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(top: 5),
                                        child: Icon(
                                          membership[index].iconData4,
                                          color: Colors.blueAccent,
                                          size: 30,
                                        ),
                                      ),
                                      SizedBox(width: 5),
                                      Container(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              membership[index].title_desc4 ??
                                                  '',
                                              style: GoogleFonts.montserrat(
                                                  fontSize: 18,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            Text(
                                              membership[index].desc4 ?? '',
                                              softWrap: true,
                                              style: GoogleFonts.montserrat(
                                                fontSize: 12,
                                                color: Colors.white,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.black,
    );
  }
}
