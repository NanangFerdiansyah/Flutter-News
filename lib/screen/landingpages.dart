import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:news/screen/home_screen.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
          child: Column(
            children: [
              Material(
                elevation: 3.0,
                borderRadius: BorderRadius.circular(30),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    "images/paris.jpg",
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 1.7,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "News From around the\n         world for you",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                "Ini berita tentang anak jalanan yang sedang\n   mencari makan saat kelaparan melanda",
                style: TextStyle(
                    color: Colors.black45,
                    fontSize: 18.0,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 40.0,
              ),
              Container(
                width: MediaQuery.of(context).size.width / 1.2,
                child: Material(
                  // borderRadius: BorderRadius.circular(30),
                  // elevation: 5.0,
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 15.0),
                    //  decoration: BoxDecoration(
                    //     color: Colors.blue,
                    //     borderRadius: BorderRadius.circular(30),
                    //   ),
                    child: Center(
                      
                        // borderRadius: BorderRadius.circular(30),
                        // elevation: 5.0,
                        child: Material(
                          borderRadius: BorderRadius.circular(30),
                          elevation: 5.0,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const NewsHomeScreen(),
                                ),
                              );
                            },
                            child: const Text(
                              'Get Started',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w500),
                            ),
                          ),
                        ),
                      
                      // child: Text(
                      //   "Get Started",
                      //   style: TextStyle(
                      //       color: Colors.white,
                      //       fontSize: 16.0,
                      //       fontWeight: FontWeight.w500),
                      // ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
