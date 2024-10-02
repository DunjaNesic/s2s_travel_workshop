import 'package:flutter/material.dart';
import 'package:s2s_travel_workshop/custom_widgets/global_button.dart';
import 'package:s2s_travel_workshop/utils/global_colors.dart';
import 'package:go_router/go_router.dart';

class Details extends StatelessWidget {
  const Details({super.key});

  @override
  Widget build(BuildContext context) {
  final double screenHeight = MediaQuery.of(context).size.height;
  final double screenWidth = MediaQuery.of(context).size.width;

      return Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: 0,
              child:  Container(
              height: screenHeight * 0.5,
              width: screenWidth,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/details.png'),
                  fit: BoxFit.cover
                )
              ),
             ),
            ),
            Positioned(
              top: 24,
              left: 16,
              child: CircleAvatar(
              backgroundColor: GlobalColors.white,
              radius: 20, 
              child: IconButton(
              iconSize: 24,
              icon: Icon(Icons.arrow_back, color: GlobalColors.darkGreen), 
              onPressed: () {
                context.go('/home');
              },    
            ),
          ),
        ),
            Positioned(
              bottom: 0,
              child:  Container(
              height: screenHeight * 0.7,
              width: screenWidth,
              decoration: BoxDecoration(
                color: GlobalColors.white,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30), 
                  topRight: Radius.circular(30), 
               ),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Bali',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(Icons.location_on, size: 16, color: GlobalColors.darkGreen), 
                              const SizedBox(width: 8), 
                              const Text('Indonesia'),
                            ],
                          )
                        ],
                      ),
                        Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text('1000EUR per person',
                          style: TextStyle(
                            fontSize: 16,
                            color: GlobalColors.darkGreen,
                            ),
                          ),
                          Row(
                            children: [
                              Icon(Icons.star, size: 16, color: Colors.yellow[800]), 
                              const SizedBox(width: 8), 
                              const Text('4.7'),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                  DefaultTabController(
                      length: 2,
                      child: Column(
                        children: [
                          TabBar(
                            indicatorColor: GlobalColors.darkGreen,
                            labelColor: GlobalColors.darkGreen,
                            unselectedLabelColor: Colors.grey,
                            tabs: const [
                              Tab(text: 'Description'),
                              Tab(text: 'Review'),
                            ],
                          ),
                          SizedBox(
                            height: screenHeight * 0.2, 
                            child: TabBarView(
                              children: [
                                SingleChildScrollView(
                                  child: Text(
                                    'Bali is a province of Indonesia and the westernmost of the Lesser Sunda Islands. '
                                    'East of Java and west of Lombok, the province includes the island of Bali and a few smaller neighboring islands.',
                                    style: TextStyle(color: Colors.grey[800]),
                                  ),
                                ),
                                SingleChildScrollView(
                                  child: Text(
                                    'Reviews coming soon...',
                                    style: TextStyle(color: Colors.grey[700]),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  GlobalButton(text: 'Book now!', onPressed: ()=>{},
                  backgroundColor: GlobalColors.darkGreen,
                  textColor: GlobalColors.white,
                  width: 200)
                ],
               ),
              ) 
             ),
            ),
           ],
          ),
         );
        }
       }