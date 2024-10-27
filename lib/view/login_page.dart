import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'home_page.dart';
import 'onboarding_page.dart';
import 'register_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      body: ListView(children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.7,
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.45,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.25,
              ),
              Positioned(
                bottom: 0,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.35,
                  child: Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.1,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width * 0.02),
                            child: Text(
                              "Login",
                              style: GoogleFonts.nunito(
                                fontSize: 36,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const TextFormCustomWidget(
                        isInvisible: false,
                        nameField: "Email",
                      ),
                      const TextFormCustomWidget(
                        isInvisible: true,
                        nameField: "Password",
                      ),
                      Expanded(
                          child: Padding(
                        padding: EdgeInsets.only(
                            right: MediaQuery.of(context).size.width * 0.18),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              child: TextButton(
                                style: const ButtonStyle(
                                    padding: WidgetStatePropertyAll(
                                        EdgeInsets.zero)),
                                onPressed: () {},
                                child: Text(
                                  "Forgot Password ?",
                                  style: GoogleFonts.nunito(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                      fontSize: 14),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ))
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.25,
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.1,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.4,
                  height: MediaQuery.of(context).size.height * 0.06,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "New Here ?",
                        style: GoogleFonts.nunito(
                            color: Colors.black, fontWeight: FontWeight.w400),
                      ),
                      TextButton(
                          style: const ButtonStyle(
                              padding: WidgetStatePropertyAll(EdgeInsets.zero)),
                          onPressed: () {
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(
                              builder: (context) {
                                return const RegisterPage();
                              },
                            ));
                          },
                          child: Text(
                            "Register",
                            style: GoogleFonts.nunito(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ))
                    ],
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.06,
                right: MediaQuery.of(context).size.width * 0.06,
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.35,
                  height: MediaQuery.of(context).size.height * 0.08,
                  child: const ButtonCustomAuthWidget(
                      name: "Login", route: Homepage()),
                ),
              )
            ],
          ),
        )
      ]),
    );
  }
}

class TextFormCustomWidget extends StatelessWidget {
  final String nameField;
  final bool isInvisible;
  const TextFormCustomWidget(
      {super.key, required this.isInvisible, required this.nameField});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.1,
      child: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.04,
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width * 0.02),
                child: Text(
                  nameField,
                  style: GoogleFonts.nunito(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 16),
                ),
              ),
            ),
          ),
          Expanded(
              child: SizedBox(
            child: Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.width * 0.02,
                  right: MediaQuery.of(context).size.width * 0.15),
              child: TextField(
                obscureText: isInvisible,
                style: GoogleFonts.nunito(color: Colors.black, fontSize: 16),
                enableSuggestions: false,
                autocorrect: false,
                textAlignVertical: TextAlignVertical.top,
                textAlign: TextAlign.left,
                decoration: InputDecoration(
                    filled: true,
                    contentPadding: EdgeInsets.only(
                        left: MediaQuery.of(context).size.width * 0.02),
                    fillColor: Colors.white,
                    focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.black,
                          width: 1.0,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    border: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.all(Radius.circular(10)))),
              ),
            ),
          ))
        ],
      ),
    );
  }
}
