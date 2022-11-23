import 'package:counter_7/source/mywatchlist_remote_data_source.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/source/drawer.dart';
import 'package:counter_7/page/detailwatchlist.dart';

class MyWatchListPage extends StatefulWidget {
  const MyWatchListPage({Key? key}) : super(key: key);

  @override
  State<MyWatchListPage> createState() => _MyWatchListPageState();
}

class _MyWatchListPageState extends State<MyWatchListPage> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('My Watchlist'),
        ),
        drawer: buildDrawer(context),
        body: FutureBuilder(
            future: fetchMyWatchList(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return const Center(child: CircularProgressIndicator());
              } else {
                if (!snapshot.hasData) {
                  return Column(
                    children: const [
                      Text(
                        "Tidak ada to do list :(",
                        style:
                            TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                      ),
                      SizedBox(height: 8),
                    ],
                  );
                } else {
                  return ListView.separated(
                      padding: const EdgeInsets.all(20.0),
                      itemCount: snapshot.data.length,
                      itemBuilder: (_, index) {
                        return ListTile(
                          tileColor: Color.fromARGB(255, 255, 255, 255),
                          shape: RoundedRectangleBorder(
                            side: BorderSide(
                              color: snapshot.data[index].fields.watched ? Colors.green : Colors.red,
                            ),
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          title: Text(
                            "${snapshot.data[index].fields.title}",
                            style: const TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          trailing: Checkbox(
                            value: snapshot.data[index].fields.watched,
                            onChanged: (bool? newValue) {
                              setState(() {
                                snapshot.data[index].fields.watched = !snapshot.data[index].fields.watched;
                                });
                              },
                          ),
                          onTap: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => MyDetailPage(
                                      modelWatchList: snapshot.data[index])
                            )
                                    );
                          },
                        );
                      },
                      separatorBuilder: (context, index) => const SizedBox(
                        height: 10,
                      ),
                  );    
                }
              }
            }));
  }
}
