import 'package:flutter/material.dart';
import 'package:mentalhealthapp/util/emoticon_face.dart';

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
              height: 25,
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
            ),
            SizedBox(
              height: 25,
            ),

            //Comment vous vous sentez ?

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Comment vous vous sentez ?',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Icon(
                  Icons.more_horiz,
                  color: Colors.white,
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),

            //Emoji emotion

            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  //mal
                  Column(
                    children: [
                      EmoticonFace(
                        emoticonFace: '😞',
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Mal',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  //pas mal
                  Column(
                    children: [
                      EmoticonFace(
                        emoticonFace: '☺',
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Pas mal',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  //bien
                  Column(
                    children: [
                      EmoticonFace(
                        emoticonFace: '😊',
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Bien',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  //excellent
                  Column(
                    children: [
                      EmoticonFace(
                        emoticonFace: '🤩',
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        'Super bien',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
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
