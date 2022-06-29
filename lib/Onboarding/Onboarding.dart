import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key, }) : super(key: key);
  @override
  State<Onboarding> createState() => _OnboardingState();
}
class _OnboardingState extends State<Onboarding> {
  final controller = PageController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(
              top: 10
          ),
          child: FloatingActionButton.extended(
            elevation: 0,
            onPressed: (){
              Navigator.pushNamed(context, 'login');
            },
            label: const Text(
              'Skip',
              style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                  fontWeight: FontWeight.bold
              ),
            ),
            backgroundColor: Colors.orange[50],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: PageView(
            controller: controller,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children:  const [
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    '7Krave',
                    style: TextStyle(
                        color: Colors.teal,
                        fontSize: 37
                    ),
                  ),
                  Image(
                    image: AssetImage(
                        'assets/0.png'
                    ),
                  ),
                  Text(
                    'Get food delivery to your doorstep asap',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 27
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    'We have young and professional delivery team that will bring your food as soon as possible to your doorstep',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children:  const [
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    '7Krave',
                    style: TextStyle(
                        color: Colors.teal,
                        fontSize: 37
                    ),
                  ),
                  Image(
                    image: AssetImage(
                        'assets/1.png'
                    ),
                  ),
                  Text(
                    'Buy Any Food from your favorite restaurant',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 27
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    'We are constantly adding your favourite restaurant throughout the territory and around your area carefully selected',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children:  const [
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    '7Krave',
                    style: TextStyle(
                        color: Colors.teal,
                        fontSize: 37
                    ),
                  ),
                  Image(
                    image: AssetImage(
                        'assets/2.png'
                    ),
                  ),
                  Text(
                    'Get easy Payment ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 27
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    '',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomSheet: SizedBox(
          height: 170,
          width: double.infinity,
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              SmoothPageIndicator(
                  controller: controller,
                  count: 3,
                effect:  const SlideEffect(
                    spacing:  8.0,
                    radius:  4.0,
                    dotWidth:  20.0,
                    dotHeight:  8.0,
                    strokeWidth:  0,
                    dotColor:  Color(0xffE0E0E0),
                    activeDotColor:  Colors.orangeAccent,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20),
                child: Container(
                  clipBehavior:Clip.antiAliasWithSaveLayer,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: MaterialButton(
                    onPressed: (){
                      Navigator.pushNamed(context, 'login');
                    },
                    color: Colors.teal[300],
                    height: 55,
                    minWidth: double.infinity,
                    child: const Text(
                      'Get started',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20
                      ),
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.pushNamed(context, 'Register');
                },
                child: RichText(
                  text: const TextSpan(
                      style: TextStyle(color: Colors.grey),
                      children: [
                        TextSpan(
                            text: 'Don\'t have an account? ',
                            style: TextStyle(
                                color: Colors.black,
                              fontSize: 17,
                              fontWeight: FontWeight.w500
                            )
                        ),
                        TextSpan(
                          text: 'Sign up',
                          style: TextStyle(
                              color: Colors.teal,
                              fontWeight: FontWeight.w500,
                              fontSize: 17
                          ),
                        ),
                      ]
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
