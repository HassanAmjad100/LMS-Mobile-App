import 'package:flutter/material.dart';
import 'package:library_management_system/components/reusable_card.dart';
import 'package:library_management_system/screens/add_book_screen.dart';
import 'package:library_management_system/screens/issue_book_screen.dart';
import 'package:library_management_system/screens/remove_book.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:library_management_system/screens/return_book_screen.dart';
import 'package:library_management_system/screens/signin_screen.dart';

class AdminHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0XFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      home: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          leadingWidth: 100,
          leading: ElevatedButton.icon(
            onPressed: () => Navigator.of(context).pop(),
            icon: const Icon(Icons.arrow_left_sharp),
            label: const Text('Back'),
            style: ElevatedButton.styleFrom(
              elevation: 0,
              backgroundColor: Colors.transparent,
            ),
          ),

          centerTitle: true,
          title: Text(
            'Admin Home',
            style: TextStyle(fontFamily: 'SourceSans', color: Colors.white),
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Column(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AdminHome()),
                              );
                            },
                            child: ReusableCard(
                              icon: FontAwesomeIcons.book,
                              title: 'Search',
                            ),
                          ),
                        ),

                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => AddBook()),
                              );
                            },
                            child: ReusableCard(
                              icon: FontAwesomeIcons.plus,
                              title: 'Add book',
                            ),
                          ),
                        ),

                        Expanded(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => RemoveBook()));
                            },
                            child: ReusableCard(
                              icon: FontAwesomeIcons.minus,
                              title: 'Remove book',
                            ),
                          ),
                        ),


                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                    child: GestureDetector(
                    onTap: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(
                  builder: (context) => IssueBook()));
                  },
                          child: ReusableCard(
                            icon: FontAwesomeIcons.gift,
                            title: 'Issue book to user',
                          ),
                    ),
                        ),
                        Expanded(

                        child: GestureDetector(
                        onTap: () {
                        Navigator.push(
                         context,
                          MaterialPageRoute(
                          builder: (context) => ReturnBook()));
                        },
                          child: ReusableCard(


                            icon: FontAwesomeIcons.backward,
                            title: 'Return book from user',
                          ),
                        ),
                        ),
                      ],
                    ),
                  ),

                  Expanded(
                    child: Row(
                      children: [
                        Expanded(





                          child: ReusableCard(
                            icon: FontAwesomeIcons.powerOff,
                            title: 'Log out',
                          ),
                        ),

                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
