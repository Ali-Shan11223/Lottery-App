import 'package:flutter/material.dart';
import 'dart:math';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int x = 0;
  Random random = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Lottery App'),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(child: Text('Lottery Winning Number is 4')),
          const SizedBox(
            height: 10,
          ),
          Container(
            height: 250,
            width: 300,
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(.3),
                borderRadius: BorderRadius.circular(10)),
            child: x == 4
                ? const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.done_all_rounded,
                        color: Colors.green,
                        size: 30,
                      ),
                      Text(
                        'Congrats You Won The Lottery!',
                        textAlign: TextAlign.center,
                      )
                    ],
                  )
                : Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.error_outlined,
                        color: Colors.red,
                        size: 30,
                      ),
                      Text(
                        'Lottery Winning Number is $x\nTry Again.',
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          x = random.nextInt(10);
          setState(() {});
          print(x.toString());
        },
        child: const Icon(Icons.refresh_rounded),
      ),
    );
  }
}
