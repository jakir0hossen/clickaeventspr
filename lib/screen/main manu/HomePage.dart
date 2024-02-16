// import 'package:clickaeventsp/screen/main%20manu/sub%20manu/navbar.dart';
// import 'package:clickaeventsp/screen/main%20manu/searchBar.dart';
// import 'package:clickaeventsp/style/style.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
//
// class HomePage extends StatelessWidget {
//   const HomePage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     var services = [
//       "Calendar",
//       "Checklist",
//       "Budget",
//       "Event",
//       "Event Schedule",
//       "Guests",
//       "Help",
//       "Ticket"
//     ];
//
//     var images = [
//       "assets/images/calander.png",
//       "assets/images/checklist.png",
//       "assets/images/budget.png",
//       "assets/images/event.png",
//       "assets/images/eventschedule.png",
//       "assets/images/guests.png",
//       "assets/images/help.png",
//       "assets/images/ticket.png",
//     ];
//
//     return Scaffold(
//       drawer: Navbar(),
//       appBar: AppBar(
//         backgroundColor: colorRed,
//         centerTitle: true,
//         title: Text(
//           "Click A Event",
//           style: TextStyle(color: Colors.white),
//         ),
//         actions: [
//           IconButton(
//               onPressed: () {
//                 showSearch(context: context, delegate: Search());
//               },
//               icon: Icon(Icons.search))
//         ],
//       ),
//       body: Container(
//         child: Padding(
//             padding: EdgeInsets.all(8),
//             child: GridView.builder(
//                 itemCount: services.length,
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 2,
//                     childAspectRatio: MediaQuery.of(context).size.width /
//                         (MediaQuery.of(context).size.height / 2)),
//                 itemBuilder: (BuildContext context, int index) {
//                   return Card(
//                     child: Column(
//                       children: [
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Image.asset(
//                           images[index],
//                           height: 50,
//                           width: 50,
//                         ),
//                         Padding(
//                           padding: EdgeInsets.all(20),
//                           child: Text(
//                             services[index],
//                             style: TextStyle(
//                                 fontSize: 20,
//                                 height: 1.2,
//                                 fontWeight: FontWeight.bold),
//                             textAlign: TextAlign.center,
//                           ),
//                         )
//                       ],
//                     ),
//                   );
//                 })),
//       ),
//     );
//   }
// }
