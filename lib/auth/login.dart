import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.blue,
              width: double.infinity,
              height: 250,
            ),
           const SizedBox(
             height: 15,
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
                       'Sign in ',
                       style: TextStyle(
                         fontSize: 40,

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
                       'Sign in',
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
                         'Sign up with Google',
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
                       Navigator.pushNamed(context, 'Register');
                     },
                     child: RichText(
                       text: const TextSpan(
                           style: TextStyle(color: Colors.grey),
                           children: [
                             TextSpan(
                                 text: 'Does\'t has any account? ',
                                 style: TextStyle(
                                     color: Color(0xff686868),
                                     fontSize: 17,
                                 )
                             ),
                             TextSpan(
                               text: 'Register here',
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
                Text(
                   textAlign: TextAlign.center,
                   'Use the application according to policy rules. Any kinds of violations will be subject to sanctions.',
                   style: TextStyle(
                       color: Colors.grey
                   ),
                 ),

               ],
             ),
           )
          ],
        ),
      ),
    );
  }
}