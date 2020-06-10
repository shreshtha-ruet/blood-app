import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> with SingleTickerProviderStateMixin {
  AnimationController _controller;


  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: new Stack(
        fit: StackFit.expand,
        children: <Widget>[
          new Image(
            image: new AssetImage("assets/login.jpg"),
            fit: BoxFit.contain,
          ),
          Positioned(
              bottom: 110,
              left: 75,
              height: 50.0,
              width: 140.0,
              child: FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                  );

                  print('Login pressed');
                },
                child: Text(
                  'LOGIN',
                  style: TextStyle(fontSize: 20.0),
                ),
                textColor: Colors.black,
                color: Colors.red[700],
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(22.0)),
              )),
          Positioned(
              bottom: 45,
              left: 75,
              height: 50.0,
              width: 140.0,
              child: FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUpScreen()),
                  );
                },
                child: Text(
                  'SIGN UP',
                  style: TextStyle(fontSize: 20.0),
                ),
                textColor: Colors.black,
                color: Colors.red[700],
                shape: RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(22.0)),
              ))
        ],
      ),
    );
  }
}

class SignUpScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SignUpScreenState();
  }
}

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return LoginScreenState();
  }
}

class SignUpScreenState extends State<SignUpScreen> {
  String _name;
  String _age;
  String _bloodGroup;
  String _mobile;
  String _address;
  String _email;
  String _password;
  String _passwordConfirmation;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildName() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Name'),
      validator: (value) {
        if (value.isEmpty) {
          return 'This field is required.';
        }
        return null;
      },
      onSaved: (String value) {
        _name = value;
      },
    );
  }

  Widget _buildAge() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Age'),
      keyboardType: TextInputType.number,
      validator: (value) {
        if (value.isEmpty) {
          return 'This field is required.';
        }
        return null;
      },
      onSaved: (String value) {
        _age = value;
      },
    );
  }

    Widget _buildBloodGroup() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Blood Group'),
      keyboardType: TextInputType.text,
      validator: (value) {
        if (value.isEmpty) {
          return 'This field is required.';
        }
        return null;
      },
      onSaved: (String value) {
        _bloodGroup = value;
      },
    );
  }

  Widget _buildMobile() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Mobile No.'),
      keyboardType: TextInputType.phone,
      validator: (value) {
        if (value.isEmpty) {
          return 'This field is required.';
        }
        return null;
      },
      onSaved: (String value) {
        _mobile = value;
      },
    );
  }

  Widget _buildAddress() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Address'),
      keyboardType: TextInputType.text,
      validator: (value) {
        if (value.isEmpty) {
          return 'This field is required.';
        }
        return null;
      },
      onSaved: (String value) {
        _address = value;
      },
    );
  }

  Widget _buildEmail() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Email'),
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value.isEmpty) {
          return 'This field is required.';
        }
        return null;
      },
      onSaved: (String value) {
        _email = value;
      },
    );
  }

  

  Widget _buildPassword() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Password'),
      keyboardType: TextInputType.visiblePassword,
      validator: (value) {
        if (value.isEmpty) {
          return 'This field is required.';
        }
        return null;
      },
      onSaved: (String value) {
        _password = value;
      },
    );
  }

  Widget _buildPassworConfirmation() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Confirm PAssword'),
      keyboardType: TextInputType.visiblePassword,
      validator: (value) {
        if (value.isEmpty) {
          return 'This field is required.';
        }
        return null;
      },
      onSaved: (String value) {
        _passwordConfirmation = value;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Sign Up")),
      body: Container(
          margin: EdgeInsets.all(10),
          child: Form(
            key: _formKey,            
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              
              children: <Widget>[
                _buildName(),
                // _buildAge(),
                _buildBloodGroup(),
                _buildMobile(),
                _buildAddress(),
                _buildEmail(),
                _buildPassword(),
                // _buildPassworConfirmation(),
                // SizedBox(height: 100),
                RaisedButton(
                  padding: EdgeInsets.all(1.0),
                  
                  child: Text('Submit'),
                  onPressed: () {
                     if (!_formKey.currentState.validate()) {
                      return;
                     }

                    // _formKey.currentState.save();

                    print(_name);
                    print(_age);
                    print(_email);
                    print(_password);
                    print(_passwordConfirmation);
                  },
                )
              ],
            ),
          )),
    );
  }
}

class LoginScreenState extends State<LoginScreen> {
  String _email;
  String _password;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildEmail() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Email'),
      keyboardType: TextInputType.emailAddress,
      validator: (value) {
        if (value.isEmpty) {
          return 'This field is required.';
        }
        return null;
      },
      onSaved: (String value) {
        _email = value;
      },
    );
  }

  Widget _buildPassword() {
    return TextFormField(
      decoration: InputDecoration(labelText: 'Password'),
      keyboardType: TextInputType.visiblePassword,
      validator: (value) {
        if (value.isEmpty) {
          return 'This field is required.';
        }
        return null;
      },
      onSaved: (String value) {
        _password = value;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Container(
          margin: EdgeInsets.all(24),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                _buildEmail(),
                _buildPassword(),
                SizedBox(height: 100),
                RaisedButton(
                  child: Text('Submit'),
                  onPressed: () {
                    if (!_formKey.currentState.validate()) {
                      return;
                    }

                    _formKey.currentState.save();

                    print(_email);
                    print(_password);
                  },
                )
              ],
            ),
          )),
    );
  }
}
