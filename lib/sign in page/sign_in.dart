import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool showPassword = true;
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(3.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const SizedBox(
                    height: 25,
                  ),
                  const Center(
                    child: Text(
                      "Create New Account",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 1.5),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  const Text(
                    "Full Name",
                    style: TextStyle(fontSize: 18, letterSpacing: 0.5),
                  ),
                  const SizedBox(height: 15),
                  TextFormField(
                    style: const TextStyle(color: Colors.purple),
                    decoration: InputDecoration(
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      hintText: "Enter Your Full Name",
                      hintStyle: TextStyle(color: Colors.grey[400]),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    "Email",
                    style: TextStyle(fontSize: 18, letterSpacing: 0.5),
                  ),
                  const SizedBox(height: 15),
                  TextFormField(
                    style: const TextStyle(color: Colors.purple),
                    decoration: InputDecoration(
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      hintText: "e.g. user@gmail.com",
                      hintStyle: TextStyle(color: Colors.grey[400]),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    "Password",
                    style: TextStyle(fontSize: 18, letterSpacing: 0.5),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    style: const TextStyle(color: Colors.purple),
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: showPassword
                            ? const Icon(Icons.visibility_off)
                            : const Icon(Icons.visibility),
                        onPressed: () {
                          setState(() {
                            showPassword = !showPassword;
                          });
                        },
                      ),
                      focusedBorder: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.purple),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                      hintText: "between 8-16 characters",
                      hintStyle: TextStyle(color: Colors.grey[400]),
                      border: const OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey),
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                    obscureText: showPassword,
                    maxLength: 16,
                    keyboardType: TextInputType.visiblePassword,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Checkbox(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6)),
                          fillColor: const MaterialStatePropertyAll(
                              Color.fromARGB(255, 127, 95, 178)),
                          value: isChecked,
                          onChanged: (newValue) {
                            setState(
                              () {
                                isChecked = newValue!;
                              },
                            );
                          }),
                      RichText(
                        text: const TextSpan(
                          text: 'I agree with the ',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 0.1),
                          children: <TextSpan>[
                            TextSpan(
                                text: 'Terms of services ',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 127, 95, 178))),
                            TextSpan(text: 'and '),
                            TextSpan(
                                text: 'Privacy Policy',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Color.fromARGB(255, 127, 95, 178)))
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {},
                      style: const ButtonStyle(
                        padding: MaterialStatePropertyAll(
                            EdgeInsets.fromLTRB(150, 20, 150, 20)),
                        backgroundColor: MaterialStatePropertyAll(
                            Color.fromARGB(255, 127, 95, 178)),
                      ),
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: const ButtonStyle(
                          shadowColor:
                              MaterialStatePropertyAll(Colors.transparent),
                          padding: MaterialStatePropertyAll(
                              EdgeInsets.fromLTRB(8, 14, 8, 14)),
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 248, 240, 235)),
                        ),
                        child: Row(
                          children: [
                            Image.asset(
                              "images/google.png",
                              color: const Color.fromARGB(255, 236, 89, 10),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "Login with Google",
                              style: TextStyle(
                                color: Color.fromARGB(255, 236, 89, 10),
                                letterSpacing: 0.5,
                              ),
                            ),
                          ],
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: const ButtonStyle(
                          shadowColor:
                              MaterialStatePropertyAll(Colors.transparent),
                          padding: MaterialStatePropertyAll(
                              EdgeInsets.fromLTRB(8, 14, 8, 14)),
                          backgroundColor: MaterialStatePropertyAll(
                              Color.fromARGB(255, 229, 235, 243)),
                        ),
                        child: Row(
                          children: [
                            Image.asset("images/facebook.png"),
                            const SizedBox(
                              width: 10,
                            ),
                            const Text(
                              "Login with Facebook",
                              style: TextStyle(
                                color: Colors.blue,
                                letterSpacing: 0.5,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
