import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';


class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController EmailController = TextEditingController();
  TextEditingController PasswordController = TextEditingController();
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.all(16.0),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Text("Welcome back",
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center),
              Text(
                "Please enter your email & password to access your account.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: HexColor("#92929D")),
              ),
              SizedBox(
                height: 60,
              ),
              Stack(
                alignment: Alignment.center,
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          color: HexColor("#056AFF").withOpacity(0.2),
                          width: 1,
                        ),
                      ),
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(16),
                          topLeft: Radius.circular(16)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Email",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            keyboardType: TextInputType.emailAddress,
                            controller: EmailController,
                            autofocus: true,
                            decoration: InputDecoration(
                              hintText: "Enter your Email",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide:
                                      BorderSide(color: HexColor("#92929D"))),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                borderSide: BorderSide(
                                    width: 1, color: HexColor("#92929D")),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            alignment: Alignment.topLeft,
                            child: Text(
                              "Password",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            keyboardType: TextInputType.visiblePassword,
                            controller: PasswordController,
                            obscureText: true,
                            autofocus: true,
                            decoration: InputDecoration(
                              suffixIcon: IconButton(
                                  onPressed: () {},
                                  icon: Icon(CupertinoIcons.eye_solid)),
                              hintText: "Enter your Email",
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide:
                                      BorderSide(color: HexColor("#92929D"))),
                              focusedBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(8)),
                                borderSide: BorderSide(
                                    width: 1, color: HexColor("#92929D")),
                              ),
                            ),
                          ),
                          Row(
                            children: [
                              Checkbox(
                                checkColor: Colors.white,
                                value: isChecked,
                                activeColor: Colors.blueAccent,
                                onChanged: (bool? value) {
                                  setState(() {
                                    isChecked = value ?? true;
                                  });
                                },
                              ),
                              Text(
                                "Remember me",
                                style: TextStyle(color: Colors.grey),
                              ),
                              SizedBox(
                                width: 45,
                              ),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Forgot Password?",
                                    style: TextStyle(
                                        color: Colors.blueAccent,
                                        decoration: TextDecoration.underline,
                                        decorationColor: Colors.blueAccent),
                                  ))
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            width: double.infinity,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Text("Login"),
                              style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all<Color>(Colors.blueAccent),
                                foregroundColor:  MaterialStateProperty.all<Color>(Colors.white),
                                textStyle:MaterialStateProperty.all<TextStyle>(
                                  TextStyle(fontSize: 16,fontWeight: FontWeight.bold)
                                ),
                                shape:MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                    borderRadius:BorderRadius.circular(8)
                                  )
                                )

                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("Don’t have an account?"),
                              TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "Sign Up",
                                    style: TextStyle(
                                      color: Colors.blueAccent,
                                    ),
                                  )),
                            ],
                          ),
                          SizedBox(
                            height: 25,
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Divider(
                                  color: Colors.grey,
                                ),
                              ),
                              Center(
                                  widthFactor: 1.5,
                                  child: Text(
                                    "Or Continue with",
                                    style: TextStyle(color: Colors.grey),
                                  )),
                              Expanded(
                                child: Divider(
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 15,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton.outlined(
                                  onPressed: () {}, icon: Icon(Icons.man)),
                              IconButton.outlined(
                                  onPressed: () {}, icon: Icon(Icons.man)),
                              IconButton.outlined(
                                  onPressed: () {}, icon: Icon(Icons.man)),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: -30,
                    child: CircleAvatar(
                      radius: 31,
                      backgroundColor: HexColor("#056AFF").withOpacity(0.2),
                      child: CircleAvatar(
                        radius: 30,
                        child: Icon(
                          Icons.person,
                          size: 40,
                          color: Colors.blueAccent,
                        ),
                        backgroundColor: Colors.white,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
