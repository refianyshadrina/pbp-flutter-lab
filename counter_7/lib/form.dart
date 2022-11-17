import 'package:counter_7/data_budget.dart';
import 'package:flutter/material.dart';
import 'package:counter_7/drawer.dart';

class MyFormPage extends StatefulWidget {
  const MyFormPage({super.key});

  @override
  State<MyFormPage> createState() => _MyFormPageState();
}

class _MyFormPageState extends State<MyFormPage> {
  final _formKey = GlobalKey<FormState>();
  String _judul = "";
  int _nominal = 0;
  String? _select;
  List<String> __jenis = ["Pengeluaran", "Pemasukan"];
  DateTime _dateTime = DateTime.now();

  bool isNumeric(String value) {
    if (value == null) {
      return false;
    }
    return int.tryParse(value) != null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Add Budget'),
        ),
        drawer: const MyDrawer(),
        body: Form(
          key: _formKey,
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Judul ",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      onChanged: (String? value) {
                        setState(() {
                          _judul = value!;
                        });
                      },
                      onSaved: (String? value) {
                        setState(() {
                          _judul = value!;
                        });
                      },
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        labelText: "Nominal ",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                      onSaved: (String? value) {
                        setState(() {
                          _nominal = value! as int;
                        });
                      },
                      validator: (String? value) {
                        if (value == null || value.isEmpty) {
                          return 'Please enter some text';
                        }
                        if (!isNumeric(value)) {
                          return 'Please enter number';
                        }
                        _nominal = int.parse(value);
                        return null;
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Center(
                      child: DropdownButton(
                        value: _select,
                        hint: const Text("Pilih Jenis"),
                        icon: const Icon(Icons.keyboard_arrow_down),
                        items: __jenis
                            .map<DropdownMenuItem<String>>((String items) {
                          return DropdownMenuItem<String>(
                            value: items,
                            child: Text(items),
                          );
                        }).toList(),
                        onChanged: (String? value) {
                          setState(() {
                            _select = value ?? "";
                          });
                        },
                      ),
                    ),
                  ),
                  Center(
                    child: TextButton(
                      child: Text(_dateTime == null
                          ? "Pilih tanggal"
                          : "${_dateTime!.day}-${_dateTime!.month}-${_dateTime!.year}"),
                      onPressed: () {
                        showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(2000),
                          lastDate: DateTime(2099),
                        ).then((date) {
                          setState(() {
                            _dateTime = date!;
                          });
                        });
                      },
                    ),
                  ),
                  TextButton(
                    child: const Text(
                      "Simpan",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.blue),
                    ),
                    onPressed: () {
                      if (_formKey.currentState!.validate() &&
                          _select != null &&
                          _dateTime != null) {
                        data_budget.addBudget(
                            judul: _judul,
                            nominal: _nominal,
                            jenis: _select,
                            date: _dateTime);
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MyFormPage()),
                        );
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
