import 'package:cakecalc_flutter/ingredient.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final ingredientController = TextEditingController();
  final amountController = TextEditingController();
  final usedController = TextEditingController();
  final priceController = TextEditingController();
  final markupController = TextEditingController();

  String ingredientText = '';
  String amountText = '';
  String usedText = '';
  String priceText = '';
  String markupText = '';

  double padding = 15;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Padding(
              padding: EdgeInsets.all(padding), child: _buildResposiveUI())),
    );
  }

  Widget _buildResposiveUI() {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    if (width < height) {
      return _portraitUI();
    } else {
      return _landscapeUI();
    }
  }

  Widget _landscapeUI() {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Column(
            children: [
              Flexible(
                  child: Padding(
                      padding: EdgeInsets.all(padding),
                      child: TextField(
                        onChanged: (value) {
                          setState(() {
                            ingredientText = ingredientController.text;
                          });
                        },
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'Ingredient'),
                        controller: ingredientController,
                      ))),
              Flexible(
                  child: Padding(
                      padding: EdgeInsets.all(padding),
                      child: TextField(
                        onChanged: (value) {
                          setState(() {
                            amountText = amountController.text;
                          });
                        },
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(), hintText: 'Amount'),
                        controller: amountController,
                      ))),
              Flexible(
                  child: Padding(
                      padding: EdgeInsets.all(padding),
                      child: TextField(
                        onChanged: (value) {
                          setState(() {
                            usedText = usedController.text;
                          });
                        },
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(), hintText: 'Used'),
                        controller: usedController,
                      ))),
              Flexible(
                  child: Padding(
                      padding: EdgeInsets.all(padding),
                      child: TextField(
                        onChanged: (value) {
                          setState(() {
                            priceText = priceController.text;
                          });
                        },
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(), hintText: 'Price'),
                        controller: priceController,
                      ))),
              Flexible(
                  child: Padding(
                      padding: EdgeInsets.all(padding),
                      child: TextField(
                        onChanged: (value) {
                          setState(() {
                            markupText = markupController.text;
                          });
                        },
                        decoration: const InputDecoration(
                            border: OutlineInputBorder(), hintText: 'Markup'),
                        controller: markupController,
                      ))),
            ],
          ),
        ),
        Expanded(
            flex: 2,
            child: ListView(
              padding: EdgeInsets.all(padding / 2),
              children: [
                Flexible(
                  child: Text(
                      'Ingredient: $ingredientText, Amount: $amountText, Used: $usedText, Price: $priceText UAH, Markup: $markupText%'),
                )
              ],
            )),
        Expanded(
          flex: 1,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Flexible(
                  child: TextButton(
                onPressed: () {},
                child: const Text('Update products list'),
              ))
            ],
          ),
        ),
      ],
    );
  }

  Widget _portraitUI() {
    return const Text('lol');
  }
}
