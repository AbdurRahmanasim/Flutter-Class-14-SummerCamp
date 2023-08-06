import 'package:flutter/material.dart';

class Chats extends StatelessWidget {
  const Chats({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            list_Chat("Haniyah", "Assignemnt done", "10:20 AM", "10",
                "https://t4.ftcdn.net/jpg/05/53/50/53/360_F_553505393_Q4l9rPpxCqF3QB4pbaf5Tqc7HhkHT5Hk.jpg"),
            list_Chat("ALi", "ok", "10:25 PM", "5",
                "https://cdn.pixabay.com/photo/2012/03/01/00/55/flowers-19830_640.jpg"),
            list_Chat("Mustafa", "bye", "10:40 AM", "3",
                "https://thumbs.dreamstime.com/b/aster-flowers-art-design-26968847.jpg"),
            list_Chat("Hashir", "where are you?", "01:20 AM", "11",
                "https://image.shutterstock.com/image-photo/beautiful-cosmos-flowers-blooming-garden-260nw-797194879.jpg"),
            list_Chat("Ameen", "Okay", "04:20 PM", "57",
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpfD7TMECcgmH-bkmzPDJgQo2aRTB3UeDswqqUpqO4&s"),
            list_Chat("Ahmed", "Hello", "10:19 PM", "10",
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXbNP9LwZ2rIKhmAqON-iVltmWNipGW41ug_-7PzI&s"),
            list_Chat("Bilal", "Aoa", "10:20 AM", "4",
                "https://images.unsplash.com/photo-1562690868-60bbe7293e94?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8YmVhdXRpZnVsJTIwZmxvd2VyfGVufDB8fDB8fHww&w=1000&q=80"),
            list_Chat("Bilal", "Aoa", "10:20 AM", "4",
                "https://images.unsplash.com/photo-1562690868-60bbe7293e94?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8YmVhdXRpZnVsJTIwZmxvd2VyfGVufDB8fDB8fHww&w=1000&q=80"),
            list_Chat("Bilal", "Aoa", "10:20 AM", "4",
                "https://images.unsplash.com/photo-1562690868-60bbe7293e94?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8YmVhdXRpZnVsJTIwZmxvd2VyfGVufDB8fDB8fHww&w=1000&q=80"),
            list_Chat("Bilal", "Aoa", "10:20 AM", "4",
                "https://images.unsplash.com/photo-1562690868-60bbe7293e94?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8YmVhdXRpZnVsJTIwZmxvd2VyfGVufDB8fDB8fHww&w=1000&q=80"),
            list_Chat("Bilal", "Aoa", "10:20 AM", "4",
                "https://images.unsplash.com/photo-1562690868-60bbe7293e94?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8YmVhdXRpZnVsJTIwZmxvd2VyfGVufDB8fDB8fHww&w=1000&q=80"),
            list_Chat("Bilal", "Aoa", "10:20 AM", "4",
                "https://images.unsplash.com/photo-1562690868-60bbe7293e94?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8YmVhdXRpZnVsJTIwZmxvd2VyfGVufDB8fDB8fHww&w=1000&q=80"),
            list_Chat("Bilal", "Aoa", "10:20 AM", "4",
                "https://images.unsplash.com/photo-1562690868-60bbe7293e94?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8YmVhdXRpZnVsJTIwZmxvd2VyfGVufDB8fDB8fHww&w=1000&q=80"),
          ],
        ),
      ),
    );
  }

  Widget list_Chat(String name, String message, String time,
      String no_of_message, String img) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(img),
      ),
      title: Text(name),
      subtitle: Text(message),
      trailing: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            time,
            style: TextStyle(color: Colors.green),
          ),
          Container(
            width: 25,
            height: 25,
            child: Center(
                child: Text(
              no_of_message,
              style: TextStyle(color: Colors.white),
            )),
            decoration: const BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(20))),
          )
        ],
      ),
    );
  }
}
