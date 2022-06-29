import 'package:algoriza_task_1/pages/login_screen/login_screen.dart';
import 'package:algoriza_task_1/widgets/material_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              'https://static.vecteezy.com/system/resources/previews/001/590/621/non_2x/simple-geometric-dark-background-with=small-element-free-vector-jpg',
              //fit: BoxFit.fitWidth,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Text(
                        'Welcome to Fashon Daily',
                      ),
                      const SizedBox(height: 10.0),
                      Text(
                        'Register',
                        style: Theme.of(context).textTheme.headline6,
                      ),
                      const SizedBox(height: 15.0),
                      Text('Email'),
                      const SizedBox(height: 10.0),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          hintText: 'Email',
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      const Text(
                        'Phone number',
                      ),
                      const SizedBox(height: 10.0),
                      IntlPhoneField(
                        decoration: const InputDecoration(
                          labelText: 'Phone Number',
                          border: OutlineInputBorder(
                            borderSide: BorderSide(),
                          ),
                        ),
                        initialCountryCode: 'EG',
                        onChanged: (phone) {
                          print(phone.completeNumber);
                        },
                      ),
                      //const SizedBox(height: 10.0),
                      Text('Password'),
                      const SizedBox(height: 10.0),
                      TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          hintText: 'Password',
                          suffixIcon: const Icon(
                            Icons.remove_red_eye,
                          ),
                        ),
                      ),
                      const SizedBox(height: 15.0),
                      const MaterialBtn(
                        label: 'Register',
                        width: double.infinity,
                        color: Colors.blue,
                      ),
                      const SizedBox(height: 10.0),
                      const Center(
                        child: Text('Or'),
                      ),
                      const SizedBox(height: 10.0),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                            primary: Colors.blue,
                            side: const BorderSide(
                              color: Colors.blue,
                            )),
                        onPressed: () {},
                        child: Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                MdiIcons.google,
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Text('Sign in with google')
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text('Has any account? '),
                          TextButton(
                            onPressed: () {
                              MaterialPageRoute(
                                builder: (context) => const LoginScreen(),
                              );
                            },
                            child: const Text(
                              'Sign in here',
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15.0,
                      ),
                      const Center(
                        child: Text(
                          'by regestiring your account, you are agree to our ',
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Center(
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'terms and condition',
                          ),
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
    );
  }
}
