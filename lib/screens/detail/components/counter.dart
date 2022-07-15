import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  Counter({Key? key}) : super(key: key);

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int counts = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          icon: Icons.remove,
          press: () {
            if (counts > 1) {
              setState(() {
                counts--;
              });
            }
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0 / 2),
          child: Text(
            counts.toString().padLeft(2, "0"),
            style: TextStyle(fontSize: 19),
          ),
        ),
        TextButton(
          icon: Icons.add,
          press: () {
            setState(() {
              counts++;
            });
          },
        ),
      ],
    );
  }

  SizedBox TextButton({required IconData icon, required Function()? press}) {
    return SizedBox(
      width: 40,
      height: 32,
      child: MaterialButton(
        onPressed: press,
        child: Icon(icon),
      ),
    );
  }
}
