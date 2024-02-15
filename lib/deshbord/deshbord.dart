
import 'package:clickaeventsp/screen/main%20manu/calander.dart';
import 'package:clickaeventsp/screen/main%20manu/checkList.dart';
import 'package:clickaeventsp/screen/main%20manu/searchBar.dart';
import 'package:clickaeventsp/screen/main%20manu/sub%20manu/navbar.dart';
import 'package:clickaeventsp/screen/widgets/bodyBackground.dart';
import 'package:clickaeventsp/style/style.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Deshbord extends StatefulWidget {
  const Deshbord({super.key});

  @override
  State<Deshbord> createState() => _DeshbordState();
}

class _DeshbordState extends State<Deshbord> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      drawer: Navbar(),
      appBar: AppBar(
        backgroundColor: colorRed,
        centerTitle: true,
        title: Text(
          "Click A Event",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: () {
                showSearch(context: context, delegate: Search());
              },
              icon: Icon(Icons.search))
        ],
      ),

      body: BodyBackground(
        child: GridView(

          padding: const EdgeInsets.all(20),
       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
         crossAxisCount: 2,
         crossAxisSpacing: 20,
         mainAxisSpacing: 20,
         mainAxisExtent: 150,
       ),

          children: [
            InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (_){
                  return Calendar();
                }));
              },
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 5
                    )
                  ]
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    Image.asset("assets/images/calander.png",
                    width: 50,
                      height: 50,
                    ),
                    const Text("Calendar",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),)
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (_){
                  return const CheckList();
                }));
              },
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5
                      )
                    ]
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset("assets/images/checklist.png",
                        width: 50,
                        height: 50,
                      ),
                      const Text("Checklist",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),)
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: (){},
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5
                      )
                    ]
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset("assets/images/budget.png",
                        width: 60,
                        height: 60,
                      ),
                      const Text("Budget",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),)
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: (){},
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5
                      )
                    ]
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset("assets/images/event.png",
                        width: 60,
                        height: 60,
                      ),
                      const Text("Event",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),)
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: (){},
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5
                      )
                    ]
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset("assets/images/eventschedule.png",
                        width: 50,
                        height: 50,
                      ),
                      const Text("Event Schedule",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),)
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: (){},
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5
                      )
                    ]
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset("assets/images/guests.png",
                        width: 50,
                        height: 50,
                      ),
                      const Text("Guests",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),)
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: (){},
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5
                      )
                    ]
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset("assets/images/help.png",
                        width: 50,
                        height: 50,
                      ),
                      const Text("Help",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),)
                    ],
                  ),
                ),
              ),
            ),
            InkWell(
              onTap: (){},
              child: Container(
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5
                      )
                    ]
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset("assets/images/ticket.png",
                        width: 50,
                        height: 50,
                      ),
                      const Text("Ticket",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),)
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),

      ),

    );
  }
}
