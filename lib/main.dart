import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'Simple Interest Calculator App',
      home: SIForm(),
    )
  );
}

class SIForm extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return _SIFormState();
  }
}
//create state class
class _SIFormState extends State<SIForm>{
  var _currencies =['Rupees','Dollars','Pounds'];
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Interest Calculator"),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            getImageAsset(),
          ],
        ),
      ),
    );
  }
  Widget getImageAsset()
  {
    AssetImage assetImage = AssetImage(images/money.jpg);
    Image image = Image(image: assetImage,width: 125.0,height: 125.0,);
    return Container(child: image,);
  }
}