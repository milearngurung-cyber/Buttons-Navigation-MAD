import 'package:classassignment/details.dart';
import 'package:classassignment/profile.dart';
import 'package:classassignment/setting.dart';
import 'package:classassignment/signup.dart';
import 'package:flutter/material.dart';

enum calanderView { day, week, month, year }

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  calanderView selected = calanderView.day;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F6F8),
      appBar: AppBar(
        title: const SafeArea(
          child: Text(
            "Button Gallery",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Profile(),
                  ),
                );
              },
              icon: CircleAvatar(
                radius: 18,
                backgroundColor: Colors.white24,
                child: ClipOval(
                  child: Image.network(
                    "https://wallpapercave.com/wp/wp12522325.jpg",
                    width: 36,
                    height: 36,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) =>
                        const Icon(Icons.person, color: Colors.white, size: 20),
                  ),
                ),
              ),
              style: IconButton.styleFrom(shape: const CircleBorder()),
              tooltip: 'Profile',
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
              decoration: const BoxDecoration(
                color: Color(0xFFE8F5E9),
              ),
              child: Center(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SegmentedButton<calanderView>(
                    segments: const <ButtonSegment<calanderView>>[
                      ButtonSegment<calanderView>(
                        value: calanderView.day,
                        label: Text('Day'),
                        icon: Icon(Icons.calendar_view_day),
                      ),
                      ButtonSegment(
                        value: calanderView.week,
                        label: Text('Week'),
                        icon: Icon(Icons.calendar_view_week),
                      ),
                      ButtonSegment(
                        value: calanderView.month,
                        label: Text('Month'),
                        icon: Icon(Icons.calendar_view_month),
                      ),
                      ButtonSegment(
                        value: calanderView.year,
                        label: Text('Year'),
                      ),
                    ],
                    selected: <calanderView>{selected},
                    onSelectionChanged: (Set<calanderView> newSelection) {
                      setState(() {
                        selected = newSelection.first;
                      });
                    },
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                elevation: 3,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Text(
                        "Interactive Button Types",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF1B5E20),
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        "Explore different Material Design buttons and their navigation triggers.",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey.shade600,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Wrap(
                        spacing: 12,
                        runSpacing: 12,
                        alignment: WrapAlignment.center,
                        children: [
                          SizedBox(
                            width: 140,
                            height: 44,
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Details(),
                                  ),
                                );
                              },
                              child: const Text("Details"),
                            ),
                          ),
                          SizedBox(
                            width: 140,
                            height: 44,
                            child: FilledButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const settingPage(),
                                  ),
                                );
                              },
                              child: const Text("setting page"),
                            ),
                          ),
                          SizedBox(
                            width: 140,
                            height: 44,
                            child: OutlinedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const Signuppage(),
                                  ),
                                );
                              },
                              child: const Text("Sign up Page "),
                            ),
                          ),
                          SizedBox(
                            width: 140,
                            height: 44,
                            child: TextButton(
                              onPressed: () {},
                              child: const Text("text button"),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 16),
                      SizedBox(
                        height: 44,
                        child: FilledButton.tonal(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.black,
                            foregroundColor: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/add');
                          },
                          child: const Text("Add page"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          Navigator.pushReplacementNamed(context, '/');
        },
        backgroundColor: const Color(0xFF1B5E20),
        foregroundColor: Colors.white,
        icon: const Icon(Icons.exit_to_app),
        label: const Text("Logout"),
      ),
    );
  }
}
