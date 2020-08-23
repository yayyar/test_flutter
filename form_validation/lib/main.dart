import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final appTitle = 'Form Validation Demo';

    return MaterialApp(
      title: appTitle,
      home: Scaffold(
        appBar: AppBar(
          title: Text(appTitle),
        ),
        body: MyCustomForm(),
      ),
    );
  }
}

// Create a Form widget.
class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();
  final myController = TextEditingController();
  final myController1 = TextEditingController();
  var errorTxt = '';

  // Define the focus node. To manage the lifecycle, create the FocusNode in
  // the initState method, and clean it up in the dispose method.

  FocusNode myFocusNode;

  @override
  void initState() {
    super.initState();
    //start listening to changes
    myController.addListener(_printLatestValue);
    myFocusNode = FocusNode();
  }

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextFormField(
              autofocus: true,
              decoration: InputDecoration(
                labelText: 'Enter',
              ),
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                //border: InputBorder.none,
                hintText: 'Enter data1',
                errorText: errorTxt,
              ),
              controller: myController,
              focusNode: myFocusNode,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              decoration: InputDecoration(
                //border: InputBorder.none,
                hintText: 'Enter data2',
              ),
              controller: myController1,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: Center(
              child: RaisedButton(
                onPressed: () {
                  // Validate returns true if the form is valid, or false
                  if (_formKey.currentState.validate()) {
                    Scaffold.of(context).showSnackBar(
                        SnackBar(content: Text('Processing Data')));
                    // give focus to the text field using myFocusNode.
                    myFocusNode.requestFocus();
                  }
                },
                child: Text('Submit'),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: RaisedButton(
                child: Text('Click'),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        content: Text('Data1: ${myController.text} Data2: ${myController1.text}'),
                      );
                    },
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  _printLatestValue() {
    if (myController.text.length < 5) {
      setState(() {
        errorTxt = 'Text length is LESS than 5';
      });
    } else {
      setState(() {
        errorTxt = 'Text length is MORE than 5';
      });
      print('Second text field: ${myController.text}');
    }
  }

  @override
  void dispose() {
    myController.dispose();
    // Clean up the focus node when the Form is disposed.
    myFocusNode.dispose();
    super.dispose();
  }
}
