import 'dart:ui';

import 'package:flutter/material.dart';

//
// void main() {
//   runApp(const MyApp());
// }


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
      title: const Text(
        'Weather App',
        style: TextStyle(
          fontWeight: FontWeight.bold,
        ),
      ),
      ),
      centerTitle: true,
      actions: [
       GestureDetector(
        onTap: () {
          print('refresh');
        },
        child: const Icon(Icons.refresh),
       ),
      ],
     ),
     body: Padding(
       padding: const EdgeInsets.all(16),
       child: Padding(
         padding: const EdgeInsets.all(16),
         child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              child: Card(
                elevation: 10,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: 10, 
                    sigmaY: 10),
                  ),
                ),
              ),


                  
                Column(
                  children: [
                    Text(
                      '300°F' ,
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                      const SizedBox(height: 16),
                      Icon(
                        Icons.cloud,
                        size: 64,
                      ),
                       const SizedBox(height: 16),
                      Text(
                        'Rain',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                     const SizedBox(height: 20),
                     Row(
                      children: [
                        SizedBox(
                          width: 100,
                          child: Card(
                            child: Column(
                              children: [
                                Text(
                                  '03:00', 
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  ),
                                  const SizedBox(height: 8),
                                  Icon(
                                    Icons.cloud,
                                    size: 32,
                                  ),
                                  const SizedBox(height: 8),
                              ],
                            ),
                          ),
                        ),
                      ],
                     ),
                       const Placeholder(
              fallbackHeight: 250,
            
            ),
            const SizedBox(height:20),
            const Text(
              'Whether Forecaste',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),

             const Placeholder(
              fallbackHeight: 250,
             ),
            
             const SizedBox(height:20),
              const Placeholder(
              fallbackHeight: 250,
              ),
                  ],
                ),
          ]
         ),
         ),
  }
}