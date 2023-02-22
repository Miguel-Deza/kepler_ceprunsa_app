import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kepler_ceprunsa/logic_ordinary.dart';

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);
  @override
  _FormPageState createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  String cycle = 'ORDINARIO';
  String career = 'ARQUITECTURA';
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                DropdownButtonFormField(
                  value: cycle,
                  onChanged: (String? newValue) {
                    setState(() {
                      cycle = newValue!;
                    });
                  },
                  items: <String>['ORDINARIO']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: TextStyle(fontSize: 20),
                      ),
                    );
                  }).toList(),
                ),
                DropdownButtonFormField(
                  value: career,
                  onChanged: (String? newValue) {
                    setState(() {
                      career = newValue!;
                    });
                  },
                  items: <String>[
                    'ARQUITECTURA',
                    'ECONOMÍA',
                    'DERECHO',
                    'PSICOLOGÍA',
                    'CS.DE LA COMUNICACIÓN',
                    'ARTES - PLASTICAS',
                    'ARTES - MÚSICA',
                    'EDUCACIÓN',
                    'MEDICINA',
                    'ENFERMERÍA',
                    'OTRO'
                  ].map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(
                        value,
                        style: TextStyle(fontSize: 20),
                      ),
                    );
                  }).toList(),
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r"[0-9.0-9]")),
                  ],
                  decoration: const InputDecoration(
                    icon: Icon(Icons.document_scanner_outlined),
                    hintText: 'Ingresa tu promedio',
                    labelText: 'Promedio de notas del colegio',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Ingresa una nota';
                    }
                  },
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r"[0-9.0-9]")),
                  ],
                  decoration: const InputDecoration(
                    icon: Icon(Icons.document_scanner_sharp),
                    hintText: 'Ingresa tu nota',
                    labelText: 'Perfil Vocacional',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter some text';
                    }
                  },
                ),
                TextFormField(
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    FilteringTextInputFormatter.allow(RegExp(r"[0-9.0-9]")),
                  ],
                  decoration: const InputDecoration(
                    icon: Icon(Icons.document_scanner_rounded),
                    hintText: 'Ingresa tu nota',
                    labelText: 'Examen de conocimientos',
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter some text';
                    }
                  },
                ),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: ElevatedButton(
                    onPressed: () {
                      _formKey.currentState!.validate();
                    },
                    child: const Text('Submit'),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
