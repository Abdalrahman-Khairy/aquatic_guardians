import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: MediaQuery.sizeOf(context).height * 0.06, horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.01,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 22),
            child: Text(
              "Hi, Abdo",
              textAlign: TextAlign.start,
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.lightBlue),
            ),
          ),

          Flexible(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 30, crossAxisSpacing: 30),
              itemBuilder: (context, index) => Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.lightBlue)),
                child: const Center(
                  child: Text("HI"),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
