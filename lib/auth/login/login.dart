import 'package:flutter/material.dart';
import 'package:sparkathon_project/homepage/catagory_screen.dart';
import '../../homepage/home_screen.dart';
import '../signup/signup.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  bool visibility = true;
  Widget visibilityIcon(bool visibility){
    if(visibility){
      return const Icon(Icons.visibility);
    }else{
      return const Icon(Icons.visibility_off);
    }
  }
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: screenHeight*0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: screenHeight*0.35,
                alignment: Alignment.center,
                width: screenWidth,
                child: const Image(image: AssetImage('assets/image/login.jpg')),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: screenWidth*0.05),
                width: screenWidth,
                child: Text("Welcome Back!", style: Theme.of(context).textTheme.headlineLarge,)
              ),
              SizedBox(height: screenHeight*0.04,),
          
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: screenWidth*0.05,
                ),
                child: Form(
                  child: Column(
                    children: [
                      SizedBox(
                        child: TextFormField(
                          decoration: InputDecoration(
                            labelText: "Email",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                            )
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight*0.04,),
                      SizedBox(
                        child: TextFormField(
                          obscureText: visibility,
                          decoration: InputDecoration(
                            labelText: "Password",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                            ),
                            suffixIcon: IconButton(icon: visibilityIcon(visibility), onPressed: (){
                              setState(() {
                                visibility = !visibility;
                              });
                            },),
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight*0.04,),
          
                      ElevatedButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder:(context) => const HomePage()));
                        }, 
                        style: Theme.of(context).elevatedButtonTheme.style?.copyWith(minimumSize: WidgetStatePropertyAll(Size(screenWidth*0.6, screenHeight*0.05))),
                        child: const Text("Login"), 
                        
                      )
                    ],
                  )
                ),
              ),
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account?"),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage()));
                    }, child: const Text("Sign Up"))
                  ],  
                ),
              )
            ]
          ),
        ),
      )
    );
  }
}