import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[800],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(25.0),
          child: Column(children: [
            // Salutation row
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //Head Text
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Salut, Utilisateur',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Text(
                      "05 Aout 2023",
                      style: TextStyle(color: Colors.blue[200]),
                    )
                  ],
                ),
                //Notification
                Container(
                  decoration: BoxDecoration(
                      color: Colors.blue[600],
                      borderRadius: BorderRadius.circular(12)),
                  padding: EdgeInsets.all(12),
                  child: Icon(
                    Icons.notifications,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            //Barre de recherche

            Container(
              decoration: BoxDecoration(
                  color: Colors.blue[600],
                  borderRadius: BorderRadius.circular(12)),
              padding: EdgeInsets.all(12),
              child: Row(
                children: [
                  Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Chercher',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
