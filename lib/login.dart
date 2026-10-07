import 'package:flutter/material.dart';
import 'package:flutter/widget_previews.dart';


@Preview(name: 'Login Screen')
Widget loginPreview() {
  return const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: login(),
  );
}

class login extends StatefulWidget {
    const login({super.key});

    @override
  _loginState createState() => _loginState();
}

class _loginState extends State<login> {
    TextEditingController inputNama = TextEditingController();
    TextEditingController inputPassword = TextEditingController();
    @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('E-ABSENSI')),
        // color fromARGB (opacity,red,green,blue)
        backgroundColor: Color.fromARGB(255, 255, 255, 255),
        body: Column(
            children: [
              // gambar logo
              Center(
                  child: Image.asset('assets/images/images.png',
                  height: 150,
                  width: 150,),
                ),
                Center(
                  child: Container(
                    width: 300,
                    margin: EdgeInsets.all(16),
                    child: Column(
                      children: [
                        TextField(
                          //dekorasi untuk pengisian dan garis
                          decoration: InputDecoration(
                            fillColor: Color(0xFFF5F5F5),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            labelText: 'Masukkan Nama',
                          ),
                          // kontroller untuk nama yang di inputkan
                          controller: inputNama,
                          // ketika di kirim
                          onSubmitted: (values) {
                            inputNama.text = values;
                          },
                        ),
                        SizedBox(height: 16),
                        TextField(
                          decoration: InputDecoration(
                            fillColor: Color(0xFFF5F5F5),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            labelText: 'Masukkan Password',
                          ),
                          controller: inputPassword,
                          onSubmitted: (values) {
                            inputPassword.text = values;
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                ElevatedButton(
                    child: Text('Login'),
                    onPressed: (){
                      //user sama password gaboleh kosong
                        if (inputNama.text.trim().isEmpty) {
                          print('user tidak boleh kosong');
                        }
                        if (inputPassword.text.trim().isEmpty) {
                          print('password tidak boleh kosong');
                        }
                        if (inputNama.text.trim().isEmpty ||
                            inputPassword.text.trim().isEmpty) {
                          return;
                        }
                        // tampilkan user dan password di terminal
                        print('username: ${inputNama.text}');
                        print('password: ${inputPassword.text}');
                    },
                ),
            ],
        ),
        );
  }
}
