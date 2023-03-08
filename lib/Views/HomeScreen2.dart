import 'package:flutter/material.dart';

class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({Key? key}) : super(key: key);

  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  TextStyle cardText =const
  TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
  );

  createCard(league, location,  team1, team2, score1 ,score2, time, ){
    return Card(
      child: Container(
        width: 250,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration:const BoxDecoration(
                color: Color(0xFFf6c605),
                borderRadius: BorderRadius.only(topLeft: Radius.circular(5),topRight: Radius.circular(5),),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("${league}",style: TextStyle(color: Colors.white,),),
                      Text("${location}"),
                    ],
                  ),
                  OutlinedButton(onPressed: (){}, child:const Text("Follow",style: TextStyle(color: Colors.black),)),
                ],
              ),
            ),
            Container(

              decoration:const BoxDecoration(

                  borderRadius: BorderRadius.only(bottomLeft: Radius.circular(5),bottomRight: Radius.circular(5),),
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    colors: [
                      Color(0xFF344a7b),
                      Color(0xFF4b6bb5),

                    ],
                  )
              ),
              padding: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("${team1}",style: cardText,),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children:  [
                          Icon(Icons.ac_unit),
                          Text("${team1.substring(0, 3).toUpperCase()}", style: cardText,),

                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(

                        children: [
                          Text("$time",style: cardText,),
                          Icon(Icons.access_time_outlined, color: Colors.white,),

                        ],
                      ),
                    ],
                  ),
                  const Text("3:2",style: TextStyle(color: Color(0xFFf6c605),fontSize: 24, fontWeight: FontWeight.bold),),
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text("${team2}",style: cardText, ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        children:  [

                          Text("${team2.substring(0, 3).toUpperCase()}", style: cardText,),
                          const  Icon(Icons.ac_unit),
                        ],
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Text("Watch Match", style: TextStyle(color: Color(0xFFf6c605), ),)
                    ],
                  ),
                ],

              ),
            ),
          ],
        ),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0,vertical: 10),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(text:const TextSpan(

                  children: <TextSpan>[
                    TextSpan(text: "| ", style: TextStyle(fontWeight: FontWeight.w900, color: Color(0xFFf6c605),fontSize: 20)),
                    TextSpan(text: "Live ", style: TextStyle(fontWeight: FontWeight.w900, color: Color(0xFF344a7b),fontSize: 20)),
                    TextSpan(text: "⚈", style: TextStyle(fontWeight: FontWeight.w900, color: Colors.red,fontSize: 10)),
                  ]
                ),),
                TextButton(onPressed: (){}, child:const Text("View all",style: TextStyle(color: Colors.grey),))
              ],
            ),
            Container(
              height: 150,

              child: ListView.builder(
                  scrollDirection: Axis.horizontal,itemCount: 5,itemBuilder:(BuildContext context, int index) {

                return createCard("Premier League", "Italy", "Arsenal", "Everton", "3", "2", "30:25");
              }),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(text:const TextSpan(

                    children: <TextSpan>[
                      TextSpan(text: "| ", style: TextStyle(fontWeight: FontWeight.w900, color: Color(0xFFf6c605),fontSize: 20)),
                      TextSpan(text: "Upcoming  ", style: TextStyle(fontWeight: FontWeight.w900, color: Color(0xFF344a7b),fontSize: 20)),
                    ]
                ),),
                TextButton(onPressed: (){}, child:const Text("View all",style: TextStyle(color: Colors.grey),))
              ],
            ),
            Container(
              height: 150,

              child: ListView.builder(
                  scrollDirection: Axis.horizontal,itemCount: 5,itemBuilder:(BuildContext context, int index) {

                return createCard("Premier League", "Italy", "Arsenal", "Everton", "3", "2", "30:25");
              }),
            ),
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(text:const TextSpan(

                    children: <TextSpan>[
                      TextSpan(text: "| ", style: TextStyle(fontWeight: FontWeight.w900, color: Color(0xFFf6c605),fontSize: 20)),
                      TextSpan(text: "Following  ", style: TextStyle(fontWeight: FontWeight.w900, color: Color(0xFF344a7b),fontSize: 20)),
                      
                    ]
                ),),
                TextButton(onPressed: (){}, child:const Text("View all",style: TextStyle(color: Colors.grey),))
              ],
            ),
            Container(
              height: 150,

              child: ListView.builder(
                  scrollDirection: Axis.horizontal,itemCount: 5,itemBuilder:(BuildContext context, int index) {

                return createCard("Premier League", "Italy", "Arsenal", "Everton", "3", "2", "30:25");
              }),
            ),
          ],
        ),
      ),
    );
  }
}
