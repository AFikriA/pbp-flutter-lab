import 'package:flutter/material.dart';
import 'package:counter_7/source/drawer.dart';
import 'package:flutter/services.dart';

class TambahBudgetPage extends StatefulWidget {
  const TambahBudgetPage({super.key});
  static List<BudgetItem> listBudget = [];

  static void add({
    required judul,
    required nominal,
    required jenis,
    required date,
  }) {
    listBudget.add(
        BudgetItem(judul: judul, nominal: nominal, jenis: jenis, date: date));
  }

  @override
  State<TambahBudgetPage> createState() => _TambahBudgetPageState();
}

class BudgetItem {
  String judul;
  int nominal;
  String jenis;
  DateTime date;

  BudgetItem({
    required this.judul,
    required this.nominal,
    required this.jenis,
    required this.date,
  });
}

class _TambahBudgetPageState extends State<TambahBudgetPage> {
  final _formkey = GlobalKey<FormState>();
  String _judulBudget = "";
  int _nominalBudget = 0;
  String _jenisBudget = "";
  DateTime _date = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Form Budget'),
      ),
      // Menambahkan drawer menu
      drawer: buildDrawer(context),
      body: Form(
        key: _formkey,
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Contoh: Beli Sate Pacil",
                      labelText: "Judul",
                      icon: const Icon(Icons.text_fields),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      )),
                  onChanged: (String? value) {
                    setState(() {
                      _judulBudget = value!;
                    });
                  },
                  onSaved: (String? value) {
                    setState(() {
                      _judulBudget = value!;
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'judul tidak boleh kosong!';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                      hintText: "Contoh: 100000",
                      labelText: "Nominal",
                      icon: const Icon(Icons.attach_money),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      )),
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  onChanged: (String? value) {
                    setState(() {
                      _nominalBudget = int.parse(value!);
                    });
                  },
                  onSaved: (String? value) {
                    setState(() {
                      _nominalBudget = int.parse(value!);
                    });
                  },
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return 'Nominal tidak boleh kosong!';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: DropdownButton<String>(
                  value: null,
                  icon: const Icon(Icons.keyboard_arrow_down),
                  underline: Container(
                    // ignore: prefer_const_constructors
                    decoration: ShapeDecoration(
                      // ignore: prefer_const_constructors
                      shape: RoundedRectangleBorder(
                        side: BorderSide(style: BorderStyle.none, width: 1.0),
                        borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      ),
                    ),
                  ),
                  hint: Text(_jenisBudget == '' ? 'Pilih jenis' : _jenisBudget),
                  items: const <DropdownMenuItem<String>>[
                    DropdownMenuItem<String>(
                      value: 'Pengeluaran',
                      child: Text('Pengeluaran'),
                    ),
                    DropdownMenuItem<String>(
                      value: 'Pemasukan',
                      child: Text('Pemasukan'),
                    ),
                  ],
                  onChanged: (String? value) {
                    setState(() {
                      _jenisBudget = value!;
                    });
                  },
                  
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(Icons.calendar_month_outlined),
                    const SizedBox(width: 5.0),
                    TextButton(
                      onPressed: (() {
                        showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2022),
                          lastDate: DateTime(2030),
                        );
                      }),
                      child: Text(_date.toString().split(' ')[0]),
                    ),
                  ],
                ),
              ),
              Expanded(child: Container()),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                  ),
                  child: const Text(
                    "Simpan",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    if (_formkey.currentState!.validate()) {
                      TambahBudgetPage.add(
                          judul: _judulBudget,
                          nominal: _nominalBudget,
                          jenis: _jenisBudget,
                          date: _date);
                      _formkey.currentState!.reset();
                    }
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
