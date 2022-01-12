import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String ans;
  final VoidCallback? selectHandler;
  //onPressed: () => selectHandler()
  //typedef VoidCallback = void Function();
  Answer({required this.ans,required this.selectHandler});


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: RaisedButton(
        onPressed: selectHandler,
        color: Colors.blue,
        child: Text(ans),),
    );
  }
}
