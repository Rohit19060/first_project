import 'package:flutter/cupertino.dart';

class CurrencyConverterCupertino extends StatefulWidget {
  const CurrencyConverterCupertino({super.key});

  @override
  State<CurrencyConverterCupertino> createState() => 
  _CurrencyConverterCupertinoState();
}

class _CurrencyConverterCupertinoState 
extends State<CurrencyConverterCupertino> {
  double result = 0;
  final TextEditingController textEditingController = TextEditingController();
  void convert() {
   result = double.parse(textEditingController.text) * 81;
   setState(() { });
  }
 
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      backgroundColor: CupertinoColors.systemBlue, 
      navigationBar: const CupertinoNavigationBar(
        backgroundColor: CupertinoColors.black,
        middle: Text('CurrencyConverter'),
      ),  
      child: Center(
       child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
           Text(
            result.toString(), 
          style: const TextStyle(
          fontSize: 45,
          fontWeight: FontWeight.bold,
          color: CupertinoColors.black, 
          ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CupertinoTextField(
              controller: textEditingController,
              style: const TextStyle(
                    color: CupertinoColors.black,

                  ),
                  decoration: BoxDecoration(
                    color: CupertinoColors.white,
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(5),
                      ),
                      placeholder: 'Please enter the amount in USD',
                      prefix: const Icon(CupertinoIcons.money_dollar),
                      keyboardType: const TextInputType.numberWithOptions(
                        decimal: true,
                      ),
                    ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
            child: CupertinoButton(
              onPressed: convert, 
                color: CupertinoColors.black,
                child: const Text('Convert'), 
              ),
            ),
        ]
       ),
      ),
    );
}
}