import 'package:flutter/material.dart';
import 'package:islandworld/constants.dart';


class CellView extends StatefulWidget {
  const CellView({Key? key}) : super(key: key);

  @override
  State<CellView> createState() => _CellViewState();
}

class _CellViewState extends State<CellView> {
  String _imageName = "assets/images/sea.png";
  bool cellIsland = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: _onClick,
        child: Padding(
          padding: const EdgeInsets.all(0.5),
          child: Image.asset(_imageName),
        ));
  }

  void _onClick(){
    setState((){
      if (cellIsland == false){
        totalIsland = totalIsland + 1;
      print(totalIsland);
      _imageName = "assets/images/island.png";
      cellIsland = true;
      }else{
        totalIsland = totalIsland - 1;
        print(totalIsland);
        _imageName = "assets/images/sea.png";
        cellIsland = false;
      }



    });
  }



}
