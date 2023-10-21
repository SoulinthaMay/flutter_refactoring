import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController c = TextEditingController();
  int? RESULT;
  bool hello = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculation"),
      ),
      body: Column(
        children: [
          TextFormField(
            controller: c,
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    if (c.text == '') {
                      setState(() {
                        hello = true;
                      });
                    } else {
                      int a = int.parse(c.text);
                      int b = a * 3;
                      setState(() {
                        hello = false;
                        RESULT = b;
                      });
                    }
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.close),
                      Text("3"),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    if (c.text == '') {
                      setState(() {
                        hello = true;
                      });
                    } else {
                      int a = int.parse(c.text);
                      int b = a * 5;
                      setState(() {
                        hello = false;
                        RESULT = b;
                      });
                    }
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.close),
                      Text("5"),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    if (c.text == '') {
                      setState(() {
                        hello = true;
                      });
                    } else {
                      int a = int.parse(c.text);
                      int b = a * 9;
                      setState(() {
                        hello = false;
                        RESULT = b;
                      });
                    }
                  },
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.close),
                      Text("9"),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          hello == false
              ? RESULT != null
                  ? Text('ຜົນຄູນເທົ່າກັບ $RESULT')
                  : Container(
                      width: 0,
                      height: 0,
                    )
              : Text(
                  "ກະລຸນາປ້ອນຕົວເລກ",
                ),
        ],
      ),
    );
  }
}
