import "package:bisabisnis/pages/login_screen.dart";
import "package:cloud_firestore/cloud_firestore.dart";
import "package:firebase_auth/firebase_auth.dart";
import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  bool showLogInPage = false;

  void toggleScreens() {
    if (mounted) {
      setState(() {
        showLogInPage = showLogInPage;
      });
    }
  }

  int currentIndex = 4;
  final user = FirebaseAuth.instance.currentUser!;

  //document IDs
  List<String> docIDs = [];

  // get docIDs
  Future getDocId() async {
    await FirebaseFirestore.instance.collection('users').get().then(
          (snapshot) => snapshot.docs.forEach((document) {
            print(document.reference);
            docIDs.add(document.reference.id);
          }),
        );
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(1, 26, 26, 26),
      ),
      body: ListView(
        children: [
          SizedBox(height: 30),

          // profile pic
          Icon(
            Icons.person,
            size: 72,
            color: Colors.white,
          ),

          // Log Out
          MaterialButton(
            onPressed: () async {
              await FirebaseAuth.instance.signOut();

              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      LogInPage(showSignUpPage: toggleScreens),
                ),
              );
            },
            color: Colors.blue,
            child: Text(
              "Log Out",
              style: GoogleFonts.montserrat(
                fontSize: 16,
                color: Colors.white,
              ),
            ),
          ),

          SizedBox(height: 50),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Coming Soon!!!",
                style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w600),
              ),
            ],
          )
        ],
      ),
    );
  }
}
