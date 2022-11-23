import 'package:flutter/material.dart';
import 'package:counter_7/source/drawer.dart';
import 'package:counter_7/model/watchlist.dart';

class MyDetailPage extends StatefulWidget {
  const MyDetailPage({super.key, required this.modelWatchList});
  final Watchlist modelWatchList;

  @override
  State<MyDetailPage> createState() => _MyDetailPageState(modelWatchList);
}

class _MyDetailPageState extends State<MyDetailPage> {
  Watchlist model;
  _MyDetailPageState(this.model);
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Wacth Item Detail'),
          elevation: 0,
        ),
        drawer: buildDrawer(context),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(16, 20, 16, 12),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      widget.modelWatchList.fields.title,
                      style: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16),
                    child: Row(
                      children: [
                        const Text(
                          'Release Date: ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(widget.modelWatchList.fields.releaseDate)
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Row(
                      children: [
                        const Text(
                          'Rating: ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('${widget.modelWatchList.fields.rating}/10')
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            const Text(
                              'Status: ',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              widget.modelWatchList.fields.watched
                                  ? 'Udah nonton'
                                  : 'Belum nonton',
                            )
                          ],
                        ),
                        // SizedBox(
                        //   height: 12,
                        //   width: 12,
                        //   child: Checkbox(
                        //     value: widget.modelWatchList.fields.watched,
                        //     onChanged: (value) {
                        //       setState(() {
                        //         widget.modelWatchList.fields.watched = value!;
                        //       });
                        //     },
                        //   ),
                        // )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8),
                    child: Row(
                      children: [
                        const Text(
                          'Review: ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(widget.modelWatchList.fields.review)
                      ],
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () => Navigator.pop(context),
                style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50)),
                child: const Text('Back'),
              ),
            ],
          ),
        ),
      );
}
