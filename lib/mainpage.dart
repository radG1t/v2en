import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          // elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.teal[900],
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Server list'),
              IconButton(
                icon: const Icon(CupertinoIcons.settings),
                onPressed: () {
                  const DropdownMenu(
                    label: Text('data'),
                    hintText: 'test',
                    dropdownMenuEntries: [],
                  );
                },
              )
            ],
          ),
        ),
        bottomNavigationBar: BottomAppBar(
            color: Colors.black45,
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('not connected'),
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    color: Colors.teal,
                    child: IconButton(
                      color: Colors.white,
                      onPressed: () {},
                      icon: const Icon(
                        size: 20,
                        CupertinoIcons.antenna_radiowaves_left_right,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              ],
            )),
      ),
    );
  }
}
