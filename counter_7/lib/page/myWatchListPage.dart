import 'package:counter_7/page/drawer.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:counter_7/model/mywatchlist.dart';
import 'package:counter_7/main.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/page/drawer.dart';
import 'package:counter_7/page/watchlistDetai.dart';
import 'package:counter_7/fetchdatawatchlist.dart';

class MyWatchList extends StatefulWidget {
  const MyWatchList({super.key});

  @override
  State<MyWatchList> createState() => _MyWatchListState();
}

class _MyWatchListState extends State<MyWatchList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Watch List'),
        ),
        drawer: const MyDrawer(),
        body: FutureBuilder(
            future: fetchWatchList(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return const Center(child: CircularProgressIndicator());
              } else {
                if (!snapshot.hasData) {
                  return Column(
                    children: const [
                      Text(
                        "Tidak ada watch list :(",
                        style: TextStyle(
                            color: Color.fromARGB(255, 216, 89, 89),
                            fontSize: 20),
                      ),
                      SizedBox(height: 15),
                    ],
                  );
                } else {
                  return ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (_, index) => Container(
                          margin: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 4),
                          child: Card(
                              margin: const EdgeInsets.symmetric(
                                  horizontal: 0, vertical: 0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(10.0),
                                  ),
                                  child: Container(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 2, vertical: 2),
                                      child: ListTile(
                                          title: Text(
                                            "${snapshot.data![index].title}",
                                            style: const TextStyle(
                                              fontSize: 18.0,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          onTap: () {
                                            Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      DetailWatchList(
                                                        dataWatchList: snapshot
                                                            .data![index],
                                                      )),
                                            );
                                          }))))));
                }
              }
            }));
  }
}
