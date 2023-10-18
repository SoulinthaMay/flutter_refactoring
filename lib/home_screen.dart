import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController c = TextEditingController();
  int RESULT = 0;
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
                    } else if (c.text == '0') {
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
                  child: Text("ຄູນດ້ວຍ 3"),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    if (c.text == '') {
                      setState(() {
                        hello = true;
                      });
                    } else if (c.text == '0') {
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
                  child: Text("ຄູນດ້ວຍ 5"),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    if (c.text == '') {
                      setState(() {
                        hello = true;
                      });
                    } else if (c.text == '0') {
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
                  child: Text("ຄູນດ້ວຍ 9"),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    if (c.text == '') {
                      setState(() {
                        hello = true;
                      });
                    } else if (c.text == '0') {
                      setState(() {
                        hello = true;
                      });
                    } else {
                      int a = int.parse(c.text);
                      int b = a * 11;
                      setState(() {
                        hello = false;
                        RESULT = b;
                      });
                    }
                  },
                  child: Text("ຄູນດ້ວຍ 11"),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          hello == false
              ? RESULT != 0
                  ? Text('ຜົນຄູນເທົ່າກັບ $RESULT')
                  : Container(
                      width: 0,
                      height: 0,
                    )
              : Text(
                  "ປ້ອນຂໍ້ມູນໃຫ້ຄົບ / ບໍ່ສາມາດປ້ອນເລກ 0",
                ),
        ],
      ),
    );
  }
}
