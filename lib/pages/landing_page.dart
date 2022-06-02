import 'package:flutter/material.dart';
import 'package:islandworld/constants.dart';
import 'package:islandworld/pages/matriz_page.dart';


class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  final myController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.lightBlueAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Card(
                color: Colors.white70,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text("Island World"),
                      Text("Please imput a number of matriz"),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                            height: 80,
                            width: MediaQuery.of(context).size.width /1.8,
                            child: textInPut()),
                      ),
                      Text("N world is a NxN matriz"),

                      ButtonNext("CREATE WORLD", "/matrizpage")

                    ],
                  ),
                ),
              )
            ],),
          ],
        ),

      ),
    );
  }

  Widget textInPut() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        minLines: 1,
        maxLength: 2,
        keyboardType: TextInputType.number,
        cursorColor: Colors.white,
        decoration: InputDecoration(
          contentPadding: EdgeInsets.all(20),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),

                    //counter: Text('Letras 0'),
          //hintText: "Number of N world",
          labelText: "Number of N world",
          //helperText: 'Descripcion del producto',
          suffixIcon: Icon(Icons.add_box_outlined),

        ),
        onChanged: (valor) {
          setState(() {
            numberN = int.parse(valor);
          });
        },
      ),
    );
  }

  Widget ButtonNext(String theText, route){

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: ElevatedButton(
          style: style,
          onPressed: (){

            if(numberN>0){
              Navigator.pushNamed(context, route);
            }else{
              final snakBar = SnackBar(backgroundColor: Colors.red, content: Text('Please insert number'),);
              ScaffoldMessenger.of(context).showSnackBar(snakBar);
            }


            },
          child: Container(
              alignment: Alignment.center,
              width: 100,
              child: Row(
                children: [
                  SizedBox(width: 5),
                  Text(theText, style: TextStyle(fontSize: 13),),
                ],
              ))
      ),
    );
  }

}
