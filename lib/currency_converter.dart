// import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
final textEditingController = TextEditingController();

class CurrencyConverter extends StatefulWidget {
  const CurrencyConverter({super.key});
  @override
  State<CurrencyConverter> createState() => _CurrencyConverterState();
}

class _CurrencyConverterState extends State<CurrencyConverter> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // return const Scaffold();
     print('rebuild');
    // double result = 0;
    
    final border = OutlineInputBorder(
      borderSide: const BorderSide(
        width: 2.0,
        style: BorderStyle.solid,
      ),
      borderRadius: BorderRadius.circular(10),
    );
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 61, 217, 238), 
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 16, 18, 19),
        elevation: 0,
        title: const Text('CurrencyConverter'),
        centerTitle: true,
      ),  
      body: Center(
       child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Text(
            result.toString(), 
          style: const TextStyle(
          fontSize: 45,
          fontWeight: FontWeight.bold,
          color: Colors.black, 
          ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: textEditingController,
              style: const TextStyle(
                    color: Colors.black,

                  ),
                  decoration: InputDecoration(
                    hintText: 
                      'Please enter the amount in USD', 
                      hintStyle: TextStyle(
                      color: Colors.black,
                        ),
                        prefixIcon: Icon(Icons.monetization_on_outlined),
                        prefixIconColor: Colors.black,
                        filled: true,
                        fillColor: Colors.white,
                        focusedBorder: border,
                        enabledBorder: border,
                      ),
                      keyboardType: const TextInputType.numberWithOptions(
                        decimal: true,
                      ),
                    ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
            child: ElevatedButton(
              onPressed: () {
               setState(() {
                result = double.parse(textEditingController.text) * 81;
               });
              //   setState(() {
              //  } );
              },

            style: TextButton.styleFrom(
              backgroundColor: (Colors.black),
              foregroundColor: (Colors.white),
              minimumSize: const Size(double.infinity, 50),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              ),
            ), child: const Text('Convert'),
            ),
          ),

            ],
          ),
        ),
      );
    }
  }
  



// class CurrencyConverter extends StatelessWidget {
//   const CurrencyConverter({super.key});
  

//   @override
//   Widget build(BuildContext context) {
   