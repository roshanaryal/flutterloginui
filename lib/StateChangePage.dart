import 'package:flutter/material.dart';

class StateChangePage extends StatefulWidget {
  const StateChangePage({Key key}) : super(key: key);

  @override
  State<StateChangePage> createState() => _StateChangePageState();
}

class _StateChangePageState extends State<StateChangePage> {

  String _buttonText="Show view";
  bool _isVisible=false;
  int _firstNo;
  int _secondNo;
  String _total="Total : ";
  double _fontSize=10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              TextButton(onPressed: (){
                setState(() {
                  _isVisible=!_isVisible;

                  if(_isVisible)
                    {
                      _buttonText="Hide view";
                    }else{
                    _buttonText="Show view";
                  }
                  // if(_buttonText=="click me")
                  // _buttonText="Clicked";
                  // else
                  //   _buttonText="click me";

                });

              }, child: Text(_buttonText)),
              Visibility(visible: _isVisible,child: Text("This is demo text")),
              Column(
                children: [
                  TextField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Enter first no',
                    ),
                    onChanged: (text){
                      _firstNo= text as int;
                    },

                  ),
                  SizedBox(height: 10,),
                  TextField(
                    keyboardType: TextInputType.number,

                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Enter second no',
                    ),
                    onChanged: (text){
                      _secondNo=text as int;
                    },
                  ),
                  Center(child: ElevatedButton(onPressed: (

                      ){
                    setState(() {
                      if(_firstNo!=null && _secondNo !=null) {
                        int t = _secondNo + _firstNo;
                        print(t);
                        _total = "Total : $t";
                      }else
                        {
                          _total="Number null";
                        }
                    });

                  },
                  child: Text("Calculate"),),


                  ),
                  Text(_total),
                  SizedBox(height: 10,),
                  Slider(value: _fontSize,
                      min: 10,
                      max: 50,
                      label: _fontSize.toString(),
                      divisions: (50-10),

                      onChanged: (value){
                    setState(() {
                      _fontSize=value;
                    });

                  }),
                  Text("Observe the change size",style: TextStyle(fontSize: _fontSize),)
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
