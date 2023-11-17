
import 'package:avatar_glow/avatar_glow.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:university_app/screens/Homepage.dart';
import 'package:animate_do/animate_do.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _iconAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this,duration: const Duration(milliseconds: 1500 ))..repeat();
    _iconAnimation = Tween(begin: 50.0,end: 300.0).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut));
    _controller.addListener(() {
      setState(() {});
    });
    _controller.addStatusListener((status) {
      if(status == AnimationStatus.completed){
        _controller.stop();
      }else if(status == AnimationStatus.dismissed){
        _controller.forward();
      }
    });
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  Future.delayed(const Duration(seconds: 8),(){
Navigator.of(context).pushReplacement(MaterialPageRoute(
  builder: (_) => const Homepage(),
  ),
  );
  });
  }
  @override

@override
void dispose(){
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
  overlays: SystemUiOverlay.values);
  super.dispose();
}
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
    
      body: Container(
      
        width: double.infinity,
        decoration: const BoxDecoration(
         gradient: LinearGradient(colors:[Color.fromARGB(255, 92, 15, 125),Colors.teal],
         begin: Alignment.topRight,
         end: Alignment.bottomRight,
         
         ),
        ),


       child: Column(
        
        mainAxisAlignment: MainAxisAlignment.center,
    
        children: [
  
          AvatarGlow(
            duration: Duration(milliseconds: 1500),
            endRadius: 250,
            glowColor: Colors.greenAccent.shade200,
            child: Icon(
              size:_iconAnimation.value,
              FontAwesomeIcons.venus,
               color: Colors.white,
            ),
          ),
          
          const SizedBox(height: 20,),
        
           const Text("We Matter", 
          style:TextStyle(
            fontStyle: FontStyle.italic,
            color: Colors.white,
            fontSize: 32, ),
          ),
        ],
       ),
      ),
      
    );
    
  }
  
}