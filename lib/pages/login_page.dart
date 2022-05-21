//packages
import 'package:flutter/material.dart';
//Widgets
import 'package:calmar_la_ansiedad/widgets/rounded_button.dart';
import 'package:calmar_la_ansiedad/widgets/custom_input_fields.dart';
//providers
import 'package:calmar_la_ansiedad/providers/authentication_provider.dart';
//services
import 'package:calmar_la_ansiedad/services/navigation_services.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late double _deviceHeight;
  late double _deviceWidth;

  late AuthenticationProvider _auth;
  late NavigationServices _navigation;

  final _loginFormKey = GlobalKey<FormState>();

  String? _email;
  String? _password;

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    _auth = Provider.of<AuthenticationProvider>(context);
    _navigation = GetIt.instance.get<NavigationServices>();
    return _buildUI();
  }

  _buildUI() {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(
            horizontal: _deviceWidth * 0.03, vertical: _deviceHeight * 0.02),
        height: _deviceHeight * 0.98,
        width: _deviceWidth * 0.97,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _pageTitle(),
            SizedBox(
              height: _deviceHeight * 0.04,
            ),
            _loginForm(),
            SizedBox(
              height: _deviceHeight * 0.04,
            ),
            _loginButton(),
            SizedBox(
              height: _deviceHeight * 0.03,
            ),
            _registerAccountLink(),
          ],
        ),
      ),
    );
  }

  _pageTitle() {
    return Container(
      height: _deviceHeight * 0.10,
      child: const Text(
        'Calma la ansiedad',
        style: TextStyle(
            color: Colors.white, fontSize: 30, fontWeight: FontWeight.w600),
      ),
    );
  }

  _loginForm() {
    return Container(
      height: _deviceHeight * 0.22,
      child: Form(
          child: Form(
        key: _loginFormKey,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: CustomTextFormField(
                  onSaved: (_value) {
                    setState(() {
                      _email = _value;
                    });
                  },
                  regEx:
                      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+",
                  hinText: "Email",
                  obscureText: false),
            ),
            Expanded(
              child: CustomTextFormField(
                  onSaved: (_value) {
                    setState(() {
                      _password = _value;
                    });
                  },
                  regEx: r".{6,}",
                  hinText: "Contraseña",
                  obscureText: true),
            )
          ],
        ),
      )),
    );
  }

  _loginButton() {
    return RoundedButton(
        name: 'Acceso',
        height: _deviceHeight * 0.080,
        width: _deviceWidth * 0.65,
        onpressed: () {
          if (_loginFormKey.currentState!.validate()) {
            _loginFormKey.currentState!.save();
            _auth.loginUsingEmailAndPassword(_email!, _password!);
            //print("Email: $_email, Password $_password");
          }
        });
  }

  _registerAccountLink() {
    return GestureDetector(
      onTap: () {
        _navigation.navigateToRoute('/register');
      },
      child: Container(
        child: const Text(
          '¿No tienes una cuenta?',
          style: TextStyle(color: Colors.blueAccent),
        ),
      ),
    );
  }
}
