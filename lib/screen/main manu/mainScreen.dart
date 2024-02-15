
import 'package:clickaeventsp/deshbord/deshbord.dart';
import 'package:clickaeventsp/screen/Setting/settings.dart';
import 'package:clickaeventsp/screen/main%20manu/HomePage.dart';
import 'package:clickaeventsp/screen/main%20manu/searchBar.dart';
import 'package:clickaeventsp/screen/profile/ProfilePage.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class mainScreen extends StatefulWidget {
  const mainScreen({super.key});



  @override
  State<mainScreen> createState() => _mainScreenState();
}

class _mainScreenState extends State<mainScreen> {
  // var _pageData =[HomePage(),Search(),ProfilePage(),Settings()];

  var _pageData = [Deshbord(),Search(),Settings(),ProfilePage()];
  int _selectedItem = 0;
  @override
  Widget build(BuildContext context) {

     // return Scaffold(
     //   drawer: Navbar(),
     //   appBar: AppBar(
     //     backgroundColor: colorRed,
     //     centerTitle: true,
     //     title: Text("Click A Event",style: TextStyle(color: Colors.white),
     //
     //     ),
     //
     //     actions: [
     //       IconButton(onPressed: (){
     //         showSearch(
     //             context: context,
     //             delegate: Search());
     //       },
     //           icon: Icon(Icons.search))
     //     ],
     //
     //
     //   ),
     //   backgroundColor: Colors.white,
     //   bottomNavigationBar: BottomNavigationBar(
     //
     //     currentIndex: currentIndex,
     //
     //     type: BottomNavigationBarType.fixed,
     //
     //     onTap: (index){
     //       currentIndex = index;
     //     },
     //
     //     items: [
     //
     //       BottomNavigationBarItem(icon: Icon(Icons.home),label:"Home" ),
     //       BottomNavigationBarItem(icon: Icon(Icons.search),label:"Search" ),
     //       BottomNavigationBarItem(icon: Icon(Icons.calendar_view_month_rounded),label:"Calendar" ),
     //       BottomNavigationBarItem(icon: Icon(Icons.account_circle_outlined),label:"Account", ),
     //       BottomNavigationBarItem(icon: Icon(Icons.menu),label:"Menu" ),
     //
     //
     //     ],
     //
     //   ),


    return CupertinoTabScaffold(

        tabBar: CupertinoTabBar(
          activeColor: Colors.black,


          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home),
              label: 'Home',

            ),
            BottomNavigationBarItem(icon: Icon(Icons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.person),
              label: 'Profile',
            ),
            BottomNavigationBarItem(icon: Icon(Icons.settings),
              label: 'Settings',
            )

          ],),
        tabBuilder: (context ,index){
          switch(index){
            case 0:
              return CupertinoTabView(
                builder:(context){
                  return const CupertinoPageScaffold(child: Deshbord());
                },
              );

            case 1:
              return CupertinoTabView(
                builder:(context){
                  return CupertinoPageScaffold(child: SearchBar());
                },
              );

            case 2:
              return CupertinoTabView(
                builder:(context){
                  return CupertinoPageScaffold(child: ProfilePage());
                },
              );

            case 3:
              return CupertinoTabView(
                builder:(context){
                  return CupertinoPageScaffold(child: Settings());
                },
              );
          }
          return Deshbord();
        });

  }
}


