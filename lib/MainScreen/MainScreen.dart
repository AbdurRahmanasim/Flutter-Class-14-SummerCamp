import 'package:class14_flutter/Screens/Chats.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  final List<Tab> topTabs = <Tab>[
    const Tab(
      icon: Icon(Icons.group),
    ),
    Tab(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Padding(
            padding: EdgeInsets.only(right: 2.0),
            child: Text("Chats"),
          ),
          Container(
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.all(Radius.circular(20))),
            width: 16,
            height: 16,
            child: const Center(
              child: Text(
                "5",
                style: TextStyle(color: Colors.black),
              ),
            ),
          )
        ],
      ),
    ),
    const Tab(
      child: Text("Status"),
    ),
    const Tab(
      child: Text("Calls"),
    ),
  ];

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1)
      ..addListener(() {
        setState(() {});
      });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 1,
      child: Scaffold(
          appBar: AppBar(
            title: const Text("WhatsApp"),
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.camera_alt)),
              IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
              PopupMenuButton(
                onSelected: (value) {
                  // if (value == "Edit User") {
                  //   Get.to(EditUserPage());
                  // } else if (x == "Login History") {
                  //   Get.to(EditUserPage());
                  // } else if (x == "Change Password") {
                  //   Get.to(EditUserPage());
                  // } else if (x == "Deactivate User") {
                  //   Get.to(EditUserPage());
                  // }
                  // print(value);
                  // print(value);
                  // print(value);
                  if (value == 4) {
                    Navigator.pushNamed(
                      context,
                      'setting',
                    );
                    // Navigator.of(context).push(MaterialPageRoute(
                    //     builder: (context) => const Settings()));
                  }
                },
                itemBuilder: (context) => const [
                  PopupMenuItem(
                    value: 0,
                    child: Text("New Group"),
                  ),
                  PopupMenuItem(
                    value: 1,
                    child: Text("New broadcast"),
                  ),
                  PopupMenuItem(
                    value: 2,
                    child: Text("Linked Devices"),
                  ),
                  PopupMenuItem(
                    value: 3,
                    child: Text("Starred messages"),
                  ),
                  PopupMenuItem(
                    value: 4,
                    child: Text("Setting"),
                    // onTap: () {
                    //   Navigator.of(context).push(MaterialPageRoute(
                    //     builder: (context) => Settings(),
                    //   ));
                    // },
                  ),
                ],
              )
            ],
            bottom: TabBar(
              tabs: topTabs,
              controller: _tabController,
              indicatorColor: Colors.white,
            ),
          ),
          body: TabBarView(
            controller: _tabController,
            children: const [
              Center(
                  child: Text(
                "Community",
                style: TextStyle(fontSize: 50),
              )),
              Chats(),
              Center(
                  child: Text(
                "Status",
                style: TextStyle(fontSize: 50),
              )),
              Center(
                  child: Text(
                "Calls",
                style: TextStyle(fontSize: 50),
              )),
            ],
          )),
    );
  }
}
