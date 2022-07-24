import 'package:flutter/material.dart';
import 'package:formvalidator/newclass.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final formkey = GlobalKey<FormState>();

  final myController = TextEditingController();
  final myControllers = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("form text"),
      ),
      body: Container(
        padding: const EdgeInsets.fromLTRB(10, 15, 10, 15),
        child: Form(
          key: formkey,
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xFFF05A22),
                    style: BorderStyle.solid,
                    width: 1.0,
                  ),
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: TextFormField(
                  onTap: (){
                    print(myController.text);
                  },
                  keyboardType: TextInputType.text,
                  style: TextStyle(color: Colors.pinkAccent),
                  controller: myController,
                  //sfksdfobscureText: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "hintText",
                    prefixIcon: Icon(
                      Icons.arrow_downward_sharp,
                      color: Colors.orange,
                    ),
                    suffixIcon: Container(
                      child: Center(
                          child: Icon(Icons.arrow_downward_sharp,
                              color: Colors.blue)),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFFF05A22),
                          style: BorderStyle.solid,
                          width: 1.0,
                        ),
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    labelStyle: TextStyle(color: Colors.black),
                    hintStyle: TextStyle(color: Color(0xFF9A9A9A)),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xFFF05A22),
                    style: BorderStyle.solid,
                    width: 1.0,
                  ),
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: TextFormField(
                  onTap: (){
                    print(myControllers.text);
                  },
                  keyboardType: TextInputType.text,
                  style: TextStyle(color: Colors.pinkAccent),
                  controller: myControllers,
                  //sfksdfobscureText: true,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "hintText",
                    prefixIcon: Icon(
                      Icons.arrow_downward_sharp,
                      color: Colors.orange,
                    ),
                    suffixIcon: Container(
                      child: Center(
                          child: Icon(Icons.arrow_downward_sharp,
                              color: Colors.blue)),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Color(0xFFF05A22),
                          style: BorderStyle.solid,
                          width: 1.0,
                        ),
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                    ),
                    labelStyle: TextStyle(color: Colors.black),
                    hintStyle: TextStyle(color: Color(0xFF9A9A9A)),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              InkWell(
                onTap: (){
                  print(myControllers.text);
                },
                child: Container(
                  color: Colors.blue,
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,

                  child: Text("click"),
                ),
              ),
              const CustomTextField(
                hintText: "new text",
              )

            ],
          ),
        ),
      ),
    ));
  }
}
