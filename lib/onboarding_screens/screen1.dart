import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:sparkathon_project/auth/login/login.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController controller = PageController();
  List<String> lottieFiles = ['assets/lottie_files/cart.json', 'assets/lottie_files/customer_service.json', 'assets/lottie_files/online_shopping.json'];
  List<String> title = ['Lorem Ipsum', 'Lorem Ipsum', 'Lorem Ipsum'];
  List<String> subtitle = ['Lorem Ipsum', 'Lorem Ipsum', 'Lorem Ipsum'];
  List<List<String>> pages = [['assets/lottie_files/cart.json', 'Lorem Ipsum', 'Lorem Ipsum'], ['assets/lottie_files/customer_service.json', 'Lorem Ipsum', 'Lorem Ipsum'], ['assets/lottie_files/online_shopping.json', 'Lorem Ipsum', 'Lorem Ipsum']];

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller,
            scrollDirection: Axis.horizontal,
            children: pages.map((e) => OnBoardingPage(screenWidth: screenWidth, screenHeight: screenHeight, lottiefile: e[0], title: e[1], subtitle: e[2],)).toList(),
          ),
          Positioned(
            top: screenHeight*0.05,
            right: screenWidth*0.05,
            child: TextButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
            },
              child: Text('Skip', style: Theme.of(context).textTheme.bodyMedium,),
            )
          ),
          Positioned(
            bottom: screenHeight*0.05,
            left: screenWidth*0.05,
            child: SmoothPageIndicator(
              effect: ExpandingDotsEffect(
                activeDotColor: Theme.of(context).colorScheme.primary,
                dotColor: Theme.of(context).colorScheme.primary.withOpacity(0.5),
                dotHeight: 10,
                dotWidth: 10,
                spacing: 10
              ),
              controller: controller,
              count: 3,
            ),
          ),
          Positioned(
            bottom: screenHeight*0.03,
            right: screenWidth*0.05,
            child: IconButton(onPressed: (){
              if(controller.page!.round() == 2){
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
              }
              controller.nextPage(duration: const Duration(milliseconds: 500), curve: Curves.easeInOutCubic);
            }, icon: const Icon(Icons.arrow_forward, size: 30,), ))
        ],
      )
    );
  }
}

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
    required this.lottiefile,
    required this.title,
    required this.subtitle
  });

  final double screenWidth;
  final double screenHeight;
  final String lottiefile;
  final String title;
  final String subtitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: screenWidth*0.05),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: screenHeight*0.15),
            height: screenHeight*0.6,
            width: screenWidth*0.8,
            child: Lottie.asset(lottiefile, fit: BoxFit.contain,),
          ),
          Text(title, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center,),
          SizedBox(height: screenHeight*0.02,),
          Text(subtitle, style: Theme.of(context).textTheme.bodyMedium, textAlign: TextAlign.center,)
        ],
      ),
    );
  }
}