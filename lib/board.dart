import 'package:flutter/material.dart';
import './gamepiece.dart';

class Board extends StatelessWidget {
  Board({
    this.count, this.pieces, this.func
  });
  final int count;
  final Map pieces;
  final Function func;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GridView.count(
        crossAxisCount: 4,
        shrinkWrap: true,
        padding: EdgeInsets.all(10.0),
        physics: NeverScrollableScrollPhysics(),
        children: [
          for (int i=0; i<count; i++) GamePiece(index: i, data: pieces[i], func: func),
        ],
      ),
    );
  }
}
