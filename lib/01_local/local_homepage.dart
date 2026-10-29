import 'package:flutter/material.dart';

class LocalHomepage extends StatefulWidget {
  const LocalHomepage({super.key});

  @override
  State<LocalHomepage> createState() => _LocalHomepageState();
}

class _LocalHomepageState extends State<LocalHomepage> {
  int _counter1 = 0;
  int _counter2 = 0;
  int _counter3 = 0;
  int _counter4 = 0;

  int get _totalCounter => _counter1 + _counter2 + _counter3 + _counter4;

  void _incrementCounter(int index) {
    setState(() {
      switch (index) {
        case 0:
          _counter1++;
          break;
        case 1:
          _counter2++;
          break;
        case 2:
          _counter3++;
          break;
        case 3:
          _counter4++;
          break;
      }
    });
  }

  void _decrementCounter(int index) {
    setState(() {
      switch (index) {
        case 0:
          _counter1--;
          break;
        case 1:
          _counter2--;
          break;
        case 2:
          _counter3--;
          break;
        case 3:
          _counter4--;
          break;
      }
    });
  }

  Widget _buildCounter(int index, int value) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        SizedBox(
          width: 40,
          height: 40,
          child: IconButton(
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            onPressed: () => _incrementCounter(index),
            icon: const Icon(Icons.arrow_upward),
            style: IconButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 1, 75, 136),
              foregroundColor: Colors.white,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
              ),
            ),
          ),
        ),

        Container(
          alignment: Alignment.center,
          width: 150,
          height: 40,
          color: const Color.fromARGB(255, 103, 196, 106),
          child: Text(
            '$value',
            style: TextStyle(color: Colors.black, fontSize: 14),
          ),
        ),

        SizedBox(
          width: 40,
          height: 40,
          child: IconButton(
            padding: EdgeInsets.zero,
            constraints: const BoxConstraints(),
            onPressed: () => _decrementCounter(index),
            icon: const Icon(Icons.arrow_downward),
            style: IconButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 1, 75, 136),
              foregroundColor: Colors.white,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.zero,
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 1, 75, 136),
        leading: Padding(
          padding: const EdgeInsets.only(left: 8, top: 8, bottom: 8),
          child: Container(
            alignment: Alignment.center,
            color: Colors.blue,
            child: Text(
              "$_totalCounter",
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
        title: Text(
          'Overengineered Counter',
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,

        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8, top: 8, bottom: 8),
            child: Container(
              width: 56,
              alignment: Alignment.center,
              color: Colors.blue,
              child: Text(
                "$_totalCounter",
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(child: Center(child: _buildCounter(0, _counter1))),
                const VerticalDivider(
                  width: 1,
                  thickness: 1,
                  color: Colors.black,
                ),
                Expanded(child: Center(child: _buildCounter(1, _counter2))),
              ],
            ),
          ),

          const Divider(height: 1, thickness: 1, color: Colors.black),

          Expanded(
            child: Row(
              children: [
                Expanded(child: Center(child: _buildCounter(2, _counter3))),
                const VerticalDivider(
                  width: 1,
                  thickness: 1,
                  color: Colors.black,
                ),
                Expanded(child: Center(child: _buildCounter(3, _counter4))),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
