import 'package:flutter/material.dart';
import 'package:islandworld/constants.dart';


class CellView extends StatefulWidget {
  const CellView({Key? key}) : super(key: key);

  @override
  State<CellView> createState() => _CellViewState();
}

class _CellViewState extends State<CellView> {
  String _imageName = "assets/images/sea.png";


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: _onClick,
        child: Image.asset(_imageName));
  }

  void _onClick(){
    setState((){
      totalIsland = totalIsland + 1;
      print(totalIsland);
      _imageName = "assets/images/sea.png";
    });
  }



}
