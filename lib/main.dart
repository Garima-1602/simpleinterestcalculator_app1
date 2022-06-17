import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Simple Interest Calculator App',

    debugShowCheckedModeBanner: false,
    home: SIForm(),
    theme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.blue[800],

        // Define the default font family.
        fontFamily: 'Georgia',

        //primaryColor: Colors.black,
      //accentColor: Colors.accentblue
    ),
  ));
}

class SIForm extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SIFormState();
  }
}

//create state class
class _SIFormState extends State<SIForm> {
  var _currencies = ['Rupees', 'Dollars', 'Pounds'];
  final double _minimumPadding = 5.0;
  var _currentItemSelected ='Rupees';
  @override
  Widget build(BuildContext context) {

    //TextStyle textStyle =Theme.of(context).textTheme.title;
    return Scaffold(
      //resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: Text("Simple Interest Calculator"),
      ),
      body: Container(
        margin: EdgeInsets.all(_minimumPadding * 10),
        child: ListView(
          children: <Widget>[
            getImageAsset(),
            Padding(
                padding: EdgeInsets.only(
                    top: _minimumPadding, bottom: _minimumPadding),
                child: TextField(
                  keyboardType: TextInputType.number,
                  //style: textStyle,
                  decoration: InputDecoration(
                      labelText: 'Principal',
                      hintText: 'Enter Principal e.g 12000',
                      //labelStyle: textStyle,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0))),
                )),
            Padding(
                padding: EdgeInsets.only(
                    top: _minimumPadding, bottom: _minimumPadding),
                child: TextField(
                  keyboardType: TextInputType.number,
                  //style: textStyle,
                  decoration: InputDecoration(
                      labelText: 'Rate Of Interest',
                      hintText: 'Enter in %',
                     // labelStyle: textStyle,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0))),
                )),
            Padding(
                padding: EdgeInsets.only(
                    top: _minimumPadding, bottom: _minimumPadding),
                child: Row(
              children: <Widget>[
                Expanded(
                    child: TextField(
                      keyboardType: TextInputType.number,
                      //style: textStyle,
                      decoration: InputDecoration(
                          labelText: 'Term',
                          hintText: 'Time in Years%',
                          //labelStyle: textStyle,
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5.0))),
                    )),
                Container (width: _minimumPadding * 5,),
                Expanded(
                    child: DropdownButton<String>(
                      items: _currencies.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      value: _currentItemSelected,
                      onChanged: (String? newValueSelected) {
                         _ondropDownItemSelected(newValueSelected);

                      },
                    )),
              ],
            )),
            Padding(
                padding: EdgeInsets.only(
                    top: _minimumPadding, bottom: _minimumPadding),
                child: Row(children: <Widget>[
              Expanded(
                child: RaisedButton(
                  child: Text('Calculate',),
                  onPressed: (){

                  },
                ),
              ),
              Expanded(
                child: RaisedButton(
                  child: Text('Reset',),
                  onPressed: (){

                  },
                ),
              ),
            ]
            )),
            Padding(
              padding: EdgeInsets.all(_minimumPadding *2),
              child: Text('Todo Text',),
            )
          ],
        ),
      ),
    );
  }

  Widget getImageAsset() {
    AssetImage assetImage = AssetImage('images/money.jpg');
    Image image = Image(
      image: assetImage,
      width: 125.0,
      height: 125.0,
    );
    return Container(
      child: image,
      margin: EdgeInsets.all(_minimumPadding * 10),
    );
  }
}

void _ondropDownItemSelected(String? newValueSelected) {
  setState(() {
    this._currentItemSelected = newValueSelected;
  });
}

