import 'package:flutter/material.dart';
import 'package:counter_7/main.dart';
import 'package:counter_7/page/tambah_budget.dart';
import 'package:counter_7/page/drawer.dart';

class DataBudgetPage extends StatefulWidget {
  const DataBudgetPage({super.key});

  @override
  State<DataBudgetPage> createState() => _DataBudgetPageState();
}

class _DataBudgetPageState extends State<DataBudgetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Budget'),
      ),
      // Menambahkan drawer menu
      drawer: buildDrawer(context),
      body: SingleChildScrollView(
        child: Align(
            alignment: Alignment.topCenter,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: TambahBudgetPage.listBudget.map((BudgetItem o) {
                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              o.date.toString().substring(0,16),
                              style: const TextStyle(fontSize: 14.0),
                            ),
                          ],
                        ),
                        Divider(
                          color: Colors.blue,
                        ),
                        const SizedBox(height: 6.0),
                        Row(
                          children: [
                            Text(
                              o.judul,
                              style: const TextStyle(fontSize: 24.0),
                            )
                          ],
                        ),
                        const SizedBox(height: 6.0),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Rp' + o.nominal.toString(),
                              style: const TextStyle(fontSize: 16.0),
                            ),
                            if (o.jenis.toString() == 'Pengeluaran')...[
                              Text(
                                o.jenis.toString(),
                                style: const TextStyle(fontSize: 16.0, color: Colors.black),
                              ),
                            ] else ...[
                              Text(
                                o.jenis.toString(),
                                style: const TextStyle(fontSize: 16.0, color: Colors.black),
                              )
                            ]
                          ],
                        ),
                      ],
                    ),
                  ),
                );
              }).toList(),
            )),
      ),
    );
  }
}
