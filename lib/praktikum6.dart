import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

class praktikum6 extends StatefulWidget {
  const praktikum6({super.key});

  @override
  State<praktikum6> createState() => _praktikum6State();
}

class _praktikum6State extends State<praktikum6> {
  var dataList;

  void initState() {
    super.initState();
    getHttp();
  }

  void getHttp() async {
    try {
      var response = await Dio()
          .get('http://protocoderspoint.com/jsondata/superheros.json');

      setState(() {
        dataList = response.data["superheros"] as List;
      });

      print(response);
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          itemCount: dataList == null ? 0 : dataList.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              child: ListTile(
                title: Text(dataList[index]["name"]),
                subtitle: Text(dataList[index]["power"]),
                leading: Image.network(dataList[index]["url"]),
              ),
            );
          }),
    );
  }
}
