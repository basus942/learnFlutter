import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/cards.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.grey[300],
        child: ListView(
          padding: const EdgeInsets.all(0),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [section1(), section2(context)],
            )
          ],
        ),
      ),
    );
  }

  Container section2(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        // Use Colors class
        borderRadius: BorderRadius.circular(15.0),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Accounts",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                InkResponse(
                  onTap: () {
                    Navigator.of(context).pushNamed('/second');
                  },
                  child: const Icon(
                    Icons.add_circle,
                    size: 35,
                  ),
                )
              ],
            ),
          ),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Card_view(cardColor: Color.fromARGB(255, 121, 2, 2)),
                SizedBox(
                  width: 10,
                ),
                Card_view(cardColor: Color.fromARGB(255, 52, 40, 183)),
                SizedBox(
                  width: 10,
                ),
                Card_view(cardColor: Color.fromARGB(255, 102, 137, 42)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container section1() {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(15.0),
      ),
      padding: const EdgeInsets.only(left: 15, right: 15, top: 38),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Total Balance",
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 91, 91, 91),
                  fontWeight: FontWeight.w500,
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: [
                  Text(
                    "Rs 200 000.",
                    style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "01",
                    style: TextStyle(
                      fontSize: 33,
                      color: Colors.grey,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ],
          ),
          InkWell(
            onTap: () {},
            child: const CircleAvatar(
              radius: 25,
              backgroundImage: NetworkImage(
                  'https://qph.cf2.quoracdn.net/main-qimg-e94ad32a69bbd53af97ae894a258d4e6'),
            ),
          ),
        ],
      ),
    );
  }
}
