import 'package:flutter/material.dart';

import '../login/login.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {

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
                height: screenHeight*0.30,
                alignment: Alignment.center,
                width: screenWidth,
                child: const Image(image: AssetImage('assets/image/Sign up-cuate.png')),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: screenWidth*0.05),
                width: screenWidth,
                child: Text("Hello!", style: Theme.of(context).textTheme.headlineLarge,)
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
                            labelText: "Username",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10)
                            )
                          ),
                        ),
                      ),
                      SizedBox(height: screenHeight*0.04,),
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
                        onPressed: (){}, 
                        style: Theme.of(context).elevatedButtonTheme.style?.copyWith(minimumSize: WidgetStatePropertyAll(Size(screenWidth*0.6, screenHeight*0.05))),
                        child: const Text("Sign Up"), 
                        
                      )
                    ],
                  )
                ),
              ),
              SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account?"),
                    TextButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage()));
                    }, child: const Text("Login"))
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