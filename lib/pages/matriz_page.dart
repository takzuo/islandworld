import 'package:flutter/material.dart';
import 'package:islandworld/constants.dart';
import 'package:islandworld/pages/cellView.dart';

class MatrizPage extends StatefulWidget {
  const MatrizPage({Key? key}) : super(key: key);

  @override
  State<MatrizPage> createState() => _MatrizPageState();
}

class _MatrizPageState extends State<MatrizPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Island-World ${numberN} x ${numberN}"),),
      body: matrizGenerator(context),
    );
  }

  Widget matrizGenerator(BuildContext context){
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.topCenter,
          colors:[
            colorFirts,
            colorSecond,
          ],
        )
      ),
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(children: [
            Text("00", style: TextStyle(fontSize: 20),),
            Spacer(),
            Text("00", style: TextStyle(fontSize: 20),),

          ],),
        ),
        GridView.builder(
          shrinkWrap: true,
            scrollDirection: Axis.vertical,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: numberN,
            ),
        itemCount: numberN * numberN,
        itemBuilder: (context, index){
              return CellView();
        },
        )
      ],),
    );
  }
}


