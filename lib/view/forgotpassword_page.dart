import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'login_page.dart';
import 'onboarding_page.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: ListView(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.7,
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.48,
                 
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.45,
                  
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.26,
                
                ),
                Positioned(
                  bottom: 0,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.38,
                    child: Column(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.06,
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width * 0.02),
                            child: Text(
                              "Register",
                              style: GoogleFonts.nunito(
                                  color: Colors.black,
                                  fontSize: 32,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        TextFormCustomWidget(
                            isInvisible: false, nameField: "Email"),
                        TextFormCustomWidget(
                            isInvisible: false, nameField: "Password"),
                        TextFormCustomWidget(
                            isInvisible: true, nameField: "Confirmed Password")
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.25,
           
            child: Stack(
              children: [
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.13,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.48,
                    height: MediaQuery.of(context).size.height * 0.04,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Already Member ?",
                          style: GoogleFonts.nunito(
                              color: Colors.white, fontWeight: FontWeight.w400),
                        ),
                        TextButton(
                            style: ButtonStyle(
                                padding:
                                    MaterialStatePropertyAll(EdgeInsets.zero)),
                            onPressed: () {
                              Navigator.pushReplacement(context,
                                  MaterialPageRoute(
                                builder: (context) {
                                  return LoginPage();
                                },
                              ));
                            },
                            child: Text(
                              "Login",
                              style: GoogleFonts.nunito(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ))
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: MediaQuery.of(context).size.height * 0.06,
                  right: MediaQuery.of(context).size.width * 0.06,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.35,
                    height: MediaQuery.of(context).size.height * 0.08,
                    child: ButtonCustomAuthWidget(
                        name: "Register", route: OnboardingPage()),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
