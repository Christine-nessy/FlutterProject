import 'package:flutter/material.dart';
import 'package:university_app/screens/Abuses.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("We Matter"),
        centerTitle: true,
        backgroundColor: Colors.teal,
      ),

      // ignore: sort_child_properties_last
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color.fromARGB(255, 92, 15, 125), Colors.teal],
            begin: Alignment.topRight,
            end: Alignment.bottomRight,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 150, left: 20, right: 20),
          child: GridView(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1, mainAxisSpacing: 50, crossAxisSpacing: 50),
              children: [
              
                //first box
                Container(
                  
                  width: 150,
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.deepPurple,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.transparent,
                      ),
                      child:Image.asset('stop.png', height: 300,width: 300,),
                      ),
                      const SizedBox(height: 20,),
                      const Text(
                        "Report Abuse",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      )
                    ],
                    
                  ),
                ),
                
                //second box
                Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.deepPurple,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('recovery.png',height: 300,width: 300),
                      const Text(
                        "Recovery",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      )
                    ],
                  ),
                ),
                //third box
                Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.deepPurple,
                  ),
                  child:  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('emergency.png',height: 300,width: 300),
                      const Text(
                        "Emergency",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      )
                    ],
                  ),
                ),
                //fourth box
                Container(
                  width: 300,
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.deepPurple,
                  ),
                  child:  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('about.png',height: 300,width: 300),
                      const Text(
                        "About Us",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      )
                    ],
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}








































      //     padding: EdgeInsets.all(5),
      //     child: Column(
      //       children: [
      //         SizedBox(child: Row(children: [
      //           //first box
      //         Card(
      //           elevation: 20,
      //           child: Column(
      //             children: [
      //               SizedBox(
      //                 height: 200,
      //                 width: 200,
      //                 child: Row(
      //                   children: [
      //                     Padding(
      //                       padding: EdgeInsets.all(30),
      //                       child: Column(
      //                         children: [Text("Hello world")],
      //                       ),
      //                     )
      //                   ],
      //                 ),
      //               )
      //             ],
      //           ),
      //         ),
      //         //second box
      //          Card(
      //           elevation: 20,
      //           child: Column(
      //             children: [
      //               SizedBox(
      //                 height: 200,
      //                 width: 200,
      //                 child: Row(
      //                   children: [
      //                     Padding(
      //                       padding: EdgeInsets.all(30),
      //                       child: Column(
      //                         children: [Text("Hello world")],
      //                       ),
      //                     )
      //                   ],
      //                 ),
      //               )
      //             ],
      //           ),
      //         ),
      //         ],),),
      //       //third box
      //          Card(
      //           elevation: 20,
      //           child: Column(
      //             children: [
      //               SizedBox(
      //                 height: 200,
      //                 width: 200,
      //                 child: Row(
      //                   children: [
      //                     Padding(
      //                       padding: EdgeInsets.all(30),
      //                       child: Column(
      //                         children: [Text("Hello world")],
      //                       ),
      //                     )
      //                   ],
      //                 ),
      //               )
      //             ],
      //           ),
      //         ),
      //         //fourth box
      //                 Card(
      //           elevation: 20,
      //           child: Column(
      //             children: [
      //               SizedBox(
      //                 height: 200,
      //                 width: 200,
      //                 child: Row(
      //                   children: [
      //                     Padding(
      //                       padding: EdgeInsets.all(30),
      //                       child: Column(
      //                         children: [Text("Hello world")],
      //                       ),
      //                     )
      //                   ],
      //                 ),
      //               )
      //             ],
      //           ),
      //         ),
   
      //       ],
      //     )),
    
  

      
      
      
      
      
      
      
      
      
      // drawer: Drawer(
      //   width: 225,
      //   child: Column(
      // children: [
      //   Container(
      //     width: double.infinity,
      //     padding: const EdgeInsets.all(20),
      //     color: Colors.teal,
      //     child: const Column(
      //       //Sidebar begins here
      //       children: [
      //         SizedBox(
      //           height: 100,
      //           child: CircleAvatar(
      //             minRadius: 50.0,
      //             maxRadius: 50.0,
                  
      //           ),
      //         ),
      //         Text('User', style: TextStyle(
      //           fontSize: 22, 
      //         color: Colors.white
      //         ),
      //         ),
      //         Text('You Matter', style: TextStyle(
      //         color: Colors.white
      //         ),
      //         ),
              // Container(
              //   width: 100,
              //   height: 100,
              //   margin: EdgeInsets.only(top: 30),
              //   decoration: BoxDecoration(
              //     shape: BoxShape.circle,
              //     image: DecorationImage(image: AssetImage('assets/images/profile.jpg'), fit: BoxFit.fill,
              //     ),
              //   ),
              // ),
        //     ],
        //   ),

        // ),
        // // ListTile(
        //   leading: const Icon(Icons.person),
        //   title: const Text('Profile', style: TextStyle(fontSize: 18),),
        //   onTap: () {},
        // ),
        // ListTile(
        //   leading: const Icon(Icons.dashboard),
        //   title: const Text('Legal Assistance', style: TextStyle(fontSize: 18),),
        //   onTap: () {},
        // ),
        // ListTile(
        //   leading: const Icon(Icons.calendar_month),
        //   title: const Text('Calendar', style: TextStyle(fontSize: 18),),
        //   onTap: () {},
        // ),
        // ListTile(
        //   leading: const Icon(Icons.phone),
        //   title: const Text('Contact', style: TextStyle(fontSize: 18 ),),
        //   onTap: () {},
        // ),
        // ListTile(
        //   leading: const Icon(Icons.cabin),
        //   title: const Text('Safety Centers', style: TextStyle(fontSize: 18),),
        //   onTap: () {},
        // ),
        // ListTile(
        //   leading: const Icon(Icons.mediation),
        //   title: const Text('Counselling', style: TextStyle(fontSize: 18),),
        //   onTap: () {},
        // ),
        // ListTile(
        //   leading: const Icon(Icons.r_mobiledata),
        //   title: const Text('Recovery', style: TextStyle(fontSize: 18),),
        //   onTap: () {},
        // ),
        // ListTile(
        //   leading: const Icon(Icons.people),
        //   title: const Text('About Us', style: TextStyle(fontSize: 18),),
        //   onTap: () {},
        // ),
       
    //   ],//Sidebar ends here!
    // ),
    //   ),
    //     appBar: AppBar(
    //       title: const Text("We Matter"),
    //       backgroundColor: Colors.teal,
    //     ),
        

          
            // width: double.infinity,
            // height: double.infinity,
            // decoration: const BoxDecoration(
            //   gradient: LinearGradient(
            //     colors: [Color.fromARGB(255, 92, 15, 125), Colors.teal],
            //     begin: Alignment.topRight,
            //     end: Alignment.bottomRight,
            //   ),
              
            // ),
            // margin: const EdgeInsets.all(1),
  //       ),
  //           );
  // }



