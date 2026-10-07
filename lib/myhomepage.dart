import 'package:flutter/material.dart';

class login extends StatefulWidget {
    const login({super.key});

    @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
    TextEditingController inputNama = TextEditingController();
    @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('E-ABSENSI')),
        // color fromARGB (opacity,red,green,blue)
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: Column(
            children: [
                Center(
                child: Container(
                    width: 300,
                  margin: EdgeInsets.all(16),
                  child: TextField(
                    decoration: InputDecoration(
                        fillColor: Color(0xFFF5F5F5),
                        border: OutlineInputBorder(),
                        labelText: 'Masukkan Nama',
                    ),
                controller: inputNama,
                onSubmitted: (values){
                    inputNama.text = values;
                },
              ),
              ),
                ),
                ElevatedButton(
                    child: Text('Tampilkan Nama'),
                    onPressed: (){
                        print(inputNama.text);
                    },
                ),
            ],
        ),
        );
  }
}