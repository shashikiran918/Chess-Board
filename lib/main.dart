// @dart=2.9
import 'package:flutter/material.dart';
import 'package:flutter_chess_board/flutter_chess_board.dart';

void main() => runApp(MyApp());
class  MyApp  extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHome(),
    );
  }
}
class MyHome extends StatefulWidget {

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("chess"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
               ChessBoard(
                 onMove: (move){
                   print(move);
                 },
                 onCheckMate: (color){
                   print(color);
                 },
                 onDraw: (){},
                 size: MediaQuery.of(context).size.width,
                 enableUserMoves: true,
                 boardType: BoardType.orange,
                 whiteSideTowardsUser: false,
               )
          ],
        )
      ),
    );
  }
}
