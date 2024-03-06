import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slicing/order.dart';


class DeliveryPage extends StatefulWidget {
  const DeliveryPage({Key? key}) : super(key: key);

  @override
  State<DeliveryPage> createState() => _DeliveryPageState();
}

class _DeliveryPageState extends State<DeliveryPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Stack(
                children: [
                  Image.asset(
                    'assets/images/maps.png',
                    width: 420,
                    height: 600,
                    fit: BoxFit.cover,
                  ),
                   Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 50, horizontal: 40),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        width: 45,
                        height: 45,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10)),
                        child: IconButton(
                          onPressed: () {
                            Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OrderScreen()),
                        );
                            
                          },
                          icon: const Icon(
                            Icons.keyboard_arrow_left,
                            size: 30,
                          ),
                        )),
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Icon(Icons.gps_fixed),
                    )
                  ],
                ),
              ),
                  Transform.translate(
                    offset: Offset(0, 500),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 600, 
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(35),
                      ),
                      child: SingleChildScrollView(
                        child: Column(
                          children: [
                            SizedBox(height: 18),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 185.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.grey,
                                ),
                                height: 3.0,
                              ),
                            ),
                            SizedBox(height: 10),
                            Container(
                              alignment: Alignment.center,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: Text(
                                '10 minutes left',
                                style: GoogleFonts.sora(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20.0,
                                ),
                              ),
                            ),
                            SizedBox(height: 5),
                            Container(
                              alignment: Alignment.center,
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20.0),
                              child: RichText(
                                text: TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Delivery to ',
                                      style: GoogleFonts.sora(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12.0,
                                      ),
                                    ),
                                    TextSpan(
                                      text: 'Jl. Kpg Sutoyo',
                                      style: GoogleFonts.sora(
                                        color: Colors.black,
                                        fontWeight: FontWeight.w500,
                                        fontSize: 12.0,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  width: 70,
                                  height: 3,
                                  color: Colors.green,
                                  margin: EdgeInsets.symmetric(horizontal: 5),
                                ),
                                Container(
                                  width: 70,
                                  height: 3,
                                  color: Colors.green,
                                  margin: EdgeInsets.symmetric(horizontal: 5),
                                ),
                                Container(
                                  width: 70,
                                  height: 3,
                                  color: Colors.green,
                                  margin: EdgeInsets.symmetric(horizontal: 5),
                                ),
                                Container(
                                  width: 70,
                                  height: 3,
                                  color: Colors.grey,
                                  margin: EdgeInsets.symmetric(horizontal: 5),
                                ),
                              ],
                            ),
                            SizedBox(height: 20),
                            Container(
                              width: 400,
                              height: 100,
                              decoration: BoxDecoration(
                                border:
                                    Border.all(color: const Color(0xffDEDEDE)),
                                borderRadius: BorderRadius.circular(15),
                              ),
                              child: Row(
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(left: 20),
                                    padding: const EdgeInsets.all(15),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: const Color(0xffDEDEDE)),
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                    child: Image.asset(
                                        'assets/images/iconkopi.png'),
                                  ),
                                  const SizedBox(width: 20),
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Delivered your order',
                                          style: TextStyle(
                                            color: const Color(0xff303336),
                                            fontWeight: FontWeight.w600,
                                            fontSize: 16,
                                          ),
                                        ),
                                        SizedBox(height: 10),
                                        SizedBox(
                                          width: 200,
                                          child: Text(
                                            'We deliver your goods to you in the shortest possible time.',
                                            style: TextStyle(
                                              color: const Color(0xff808080),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(height: 30),
                            Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(left: 20),
                                  padding: const EdgeInsets.all(15),
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: const Color(0xffDEDEDE)),
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child:
                                      Image.asset('assets/images/iconkopi.png'),
                                ),
                                const SizedBox(width: 20),
                                Expanded(
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Johan Hawn',
                                        style: TextStyle(
                                          color: const Color(0xff303336),
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                        ),
                                      ),
                                      SizedBox(height: 10),
                                      SizedBox(
                                        width: 200,
                                        child: Text(
                                          'Personal Courier',
                                          style: TextStyle(
                                            color: const Color(0xff808080),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 60,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    border: Border.all(
                                        color: const Color(0xffDEDEDE)),
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                  child: const Icon(Icons.phone_in_talk),
                                ),
                              ],
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 80.0),
                              child: Transform.translate(
                                offset: Offset(0, 30),
                                child: const Divider(
                                  color: Colors.grey,
                                  thickness: 3,
                                  indent: 10,
                                  endIndent: 10,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
