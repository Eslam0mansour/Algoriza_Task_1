import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool m = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  Container(
                    color: Colors.blue,
                    width: double.infinity,
                    height: 120,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: IconButton(
                        onPressed: (){
                          Navigator.pushNamed(context, 'login');
                        },
                        icon: const Icon(
                          Icons.arrow_back_ios,
                          size: 35,
                        ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children:   [
                  const Text(
                    'Welcome to Fashion Daily',
                    style: TextStyle(
                        color: Colors.grey
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children:  [
                      const Text(
                        'Register ',
                        style: TextStyle(
                          fontSize: 38,

                        ),
                      ),
                      TextButton(
                        onPressed: (){},
                        child: Row(
                          children: const[
                            Text(
                              'Help',
                              style: TextStyle(
                                  fontSize: 16
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.help,
                              color: Colors.blue,
                              size: 20,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Email',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff686868),
                    ),

                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                        labelText: 'Ex. example@gmail.com',
                        labelStyle: TextStyle(
                          color:  Colors.grey,
                        ),
                        contentPadding: EdgeInsets.symmetric(
                            vertical: 0,
                            horizontal: 10),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.grey
                          ),

                        ),
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey)
                        )
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    'Phone Number',
                    style: TextStyle(
                        color: Color(0xff686868),
                        fontSize: 15
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  SizedBox(
                    height: 70,
                    child: IntlPhoneField(

                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.white24
                          ),
                        ),
                      ),
                      initialCountryCode: 'IN',
                      onChanged: (phone) {},
                    ),
                  ),
                  const Text(
                    'Password',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff686868),
                    ),

                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  TextFormField(
                    obscureText: m,
                    decoration:  InputDecoration(
                        labelText: 'Password',
                        suffixIcon: IconButton(
                          icon:  const Icon(
                             Icons.remove_red_eye,
                            color: Colors.black,
                          ),
                          onPressed: (){
                            setState(()
                            {
                              m = !m ;
                            }
                            );
                          },
                        ),
                        labelStyle: const TextStyle(
                          color:  Colors.grey,
                        ),
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0,
                            horizontal: 10),
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Colors.grey
                          ),

                        ),
                        border: const OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.grey)
                        )
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    clipBehavior:Clip.antiAliasWithSaveLayer,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: MaterialButton(
                      onPressed: (){},
                      color: Colors.blue,
                      height: 50,
                      minWidth: double.infinity,
                      child: const Text(
                        'Register',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Align(
                      alignment: Alignment.center,
                      child: Text(
                        'OR',
                      )
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        side: const BorderSide(
                            color: Colors.grey
                        ),
                        elevation: 0,
                        maximumSize: const Size(400,50),
                        minimumSize: const Size(400,50),
                        primary: Colors.white,
                        onPrimary: Colors.white,

                      ),
                      onPressed: ()  {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset("assets/googleicon.svg",
                            height: 28,
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          const Text(
                            'Sign with by Google',
                            style: TextStyle(
                                fontSize: 15,
                                color: Colors.blue
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: InkWell(
                      onTap: (){
                        Navigator.pushNamed(context, 'login');
                      },
                      child: RichText(
                        text: const TextSpan(
                            style: TextStyle(color: Colors.grey),
                            children: [
                              TextSpan(
                                  text: 'Has any account? ',
                                  style: TextStyle(
                                    color: Color(0xff686868),
                                    fontSize: 17,
                                  )
                              ),
                              TextSpan(
                                text: 'Sign in here',
                                style: TextStyle(
                                    color: Colors.blue,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 17
                                ),
                              ),
                            ]
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Align(
                    alignment: Alignment.center,
                    child: Text(
                      'by registering your account, you are agree to our',
                      style: TextStyle(
                          color: Colors.grey
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: TextButton(
                        onPressed: (){},
                        child: const Text(
                          'terms and Conditions',
                        )),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
