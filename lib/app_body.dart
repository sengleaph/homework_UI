import 'package:flutter/material.dart';


class AppBody extends StatelessWidget {
  const AppBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.center,
          child: const Text(
            '- Or Sigin With -',
            style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.1),
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: Icon(Icons.android, size: 100,weight: 30),
                ),
              ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.1),
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: Image.asset("assets/images/tweeter.png", height: 30),
              ),
            ),
          ],
        )
      ],
    );
  }
}