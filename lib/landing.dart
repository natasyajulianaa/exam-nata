import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing/home.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromRGBO(0, 0, 0, 1),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(height: 20.0),
              Container(
                child: Image.asset(
                  'assets/images/kopi.png',
                  width: 550,
                  height: 550,
                  fit: BoxFit.contain,
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'Coffe so good,',
                  style: GoogleFonts.montserrat(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontWeight: FontWeight.w800,
                    fontSize: 35.0,
                  ),
                ),
              ),
              SizedBox(height: 1.0),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 50.0),
                child: Text(
                  'your taste buds',
                  style: GoogleFonts.montserrat(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontWeight: FontWeight.w800,
                    fontSize: 35.0,
                  ),
                ),
              ),
              SizedBox(height: 1.0),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'will love it.',
                  style: GoogleFonts.montserrat(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontWeight: FontWeight.w800,
                    fontSize: 35.0,
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                child: Text(
                  'The best grain, the finest roast, the powerful flavor. ',
                  style: GoogleFonts.montserrat(
                    color: Color.fromRGBO(112, 113, 114, 1),
                    fontWeight: FontWeight.normal,
                    fontSize: 18.0,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 30.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );

                },
                child: Container(
                  width: 300.0,
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  child: Text(
                    'get started',
                    style: GoogleFonts.montserrat(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Color.fromRGBO(198, 124, 78, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                  padding: EdgeInsets.symmetric(horizontal: 140.0),
                  child: Row(children: [
                    Expanded(
                      child: Divider(
                        color: Colors.grey,
                        thickness: 3.0,
                      ),
                    ),
                  ])),
            ],
          ),
        ),
      ),
    );
  }
}
