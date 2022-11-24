import 'package:flutter/material.dart';
import 'package:counter_7/page/drawer.dart';
import 'package:counter_7/model/mywatchlist.dart';

class DetailWatchList extends StatelessWidget {
  final WatchList dataWatchList;
  const DetailWatchList({super.key, required this.dataWatchList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Detail Watch List'),
        ),
        drawer: MyDrawer(),
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Column(children: [
            Center(
                child: Text(
              dataWatchList.title,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
            )),
            Column(children: [
              Row(
                children: [
                  const Text(
                    "Release Date: ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    dataWatchList.release_date,
                    style: const TextStyle(fontSize: 20),
                  ),
                ],
              ),
              Row(
                children: [
                  const Text(
                    "Rating: ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    "${dataWatchList.rating.toString()} / 5",
                    style: const TextStyle(fontSize: 20),
                  ),
                ],
              ),
              Row(
                children: [
                  const Text(
                    "Watched: ",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Text(
                    dataWatchList.watched,
                    style: const TextStyle(fontSize: 20),
                  ),
                ],
              ),
              const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Review: ",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Row(
                children: [
                  Flexible(
                      child: Text(
                    dataWatchList.review,
                    style: const TextStyle(fontSize: 20),
                  ))
                ],
              )
            ]),
            const Spacer(),
            Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  "Back",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ]),
        ));
  }
}
