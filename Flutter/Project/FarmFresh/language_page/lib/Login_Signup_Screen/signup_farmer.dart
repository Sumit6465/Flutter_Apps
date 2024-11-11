import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:language_page/Login_Signup_Screen/Login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Signup_farmer(),
      ),
    );
  }
}

class Signup_farmer extends StatefulWidget {
  const Signup_farmer({super.key});

  @override
  State<Signup_farmer> createState() => _Signup_farmerState();
}

class _Signup_farmerState extends State<Signup_farmer> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController txt1 = TextEditingController();
  final TextEditingController txt2 = TextEditingController();
  final TextEditingController txt3 = TextEditingController();
  final TextEditingController txt4 = TextEditingController();
  final TextEditingController txt5 = TextEditingController();
  final TextEditingController txt6 = TextEditingController();
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          //backgroundColor: Colors.white,
          ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // const SizedBox(
              //   height: 30,
              // ),
              // const SizedBox(
              //   height: 80,
              // ),
              const Center(
                child: Text(
                  "Sign up",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.green),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Center(
                  child: Text(
                      "Let's get started.Are you ready to be the part of")),
              const Center(
                  child:
                      Text("something new? Then broadly move forward with us")),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 22),
                child: Text(
                  "Username",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  right: 20,
                ),
                child: Material(
                  child: TextFormField(
                    cursorColor: Colors.green,
                    controller: txt1,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2)),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 2),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: Colors.green)),
                        errorBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: Colors.red)),
                        hintText: "Enter username"),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter your username ";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 22),
                child: Text(
                  "Email",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  right: 20,
                ),
                child: Material(
                  child: TextFormField(
                    cursorColor: Colors.green,
                    controller: txt2,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2)),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 2),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: Colors.green)),
                        errorBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: Colors.red)),
                        hintText: "Enter your email"),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter your email ";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 22),
                child: Text(
                  "Mobile No.",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  right: 20,
                ),
                child: Material(
                  child: TextFormField(
                    cursorColor: Colors.green,
                    controller: txt3,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2)),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 2),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: Colors.green)),
                        errorBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: Colors.red)),
                        hintText: "Enter your Mobile No."),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter your Mobile No. ";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 22),
                child: Text(
                  "Password",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, right: 20, bottom: 10),
                child: Material(
                  child: TextFormField(
                    cursorColor: Colors.green,
                    obscureText: !isPasswordVisible,
                    controller: txt4,
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 2)),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey, width: 2),
                      ),
                      focusedBorder: const OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 2, color: Colors.green)),
                      errorBorder: const OutlineInputBorder(
                          borderSide: BorderSide(width: 2, color: Colors.red)),
                      hintText: "Enter Password",
                      suffixIcon: IconButton(
                          icon: Icon(isPasswordVisible
                              ? Icons.visibility
                              : Icons.visibility_off),
                          onPressed: () {
                            setState(() {
                              isPasswordVisible = !isPasswordVisible;
                            });
                          }),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter your password ";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 22),
                child: Text(
                  "Address",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  right: 20,
                ),
                child: Material(
                  child: TextFormField(
                    cursorColor: Colors.green,
                    controller: txt5,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderSide:
                                BorderSide(color: Colors.grey, width: 2)),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 2),
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: Colors.green)),
                        errorBorder: OutlineInputBorder(
                            borderSide:
                                BorderSide(width: 2, color: Colors.red)),
                        hintText: "Enter your Address"),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter your Address ";
                      } else {
                        return null;
                      }
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Center(
                child: ElevatedButton(
                    style: const ButtonStyle(
                        backgroundColor: WidgetStatePropertyAll(Colors.green)),
                    onPressed: () {
                      FocusScope.of(context).unfocus();
                      if (_formKey.currentState!.validate()) {
                        Navigator.of(context).pop();
                        txt1.clear();
                        txt2.clear();
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text(
                              "Welcome to FarmFresh",
                              style: TextStyle(color: Colors.white),
                            ),
                            backgroundColor: Colors.green,
                          ),
                        );
                      }
                    },
                    child: const Text(
                      "Sign up",
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )),
              ),
              const SizedBox(
                height: 10,
              ),
              const Center(
                child: Text(
                  "Already have an account ? ",
                  style: TextStyle(),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: const Center(
                  child: Text(
                    "Login",
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
