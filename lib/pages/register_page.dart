//packages
import 'package:calmar_la_ansiedad/services/navigation_services.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

//services
import 'package:calmar_la_ansiedad/services/database_service.dart';
import 'package:calmar_la_ansiedad/services/media_service.dart';
import 'package:calmar_la_ansiedad/services/cloud_storage_service.dart';

//widgets
import 'package:calmar_la_ansiedad/widgets/custom_input_fields.dart';
import 'package:calmar_la_ansiedad/widgets/rounded_button.dart';
import 'package:calmar_la_ansiedad/widgets/rounded_image.dart';

//providers
import 'package:calmar_la_ansiedad/providers/authentication_provider.dart';

class RegisterPage extends StatefulWidget {
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  late double _deviceHeight;
  late double _deviceWidth;

  late AuthenticationProvider _auth;
  late DatabaseService _db;
  late CloudStorageService _cloudStorage;
  late NavigationServices _navigation;

  String? _email;
  String? _password;
  String? _name;

  PlatformFile? _profileImage;

  final _registerFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    _auth = Provider.of<AuthenticationProvider>(context);
    _db = GetIt.instance.get<DatabaseService>();
    _cloudStorage = GetIt.instance.get<CloudStorageService>();
    _navigation = GetIt.instance.get<NavigationServices>();
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    return _buildUI();
  }

  _buildUI() {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: EdgeInsets.symmetric(
            horizontal: _deviceHeight * 0.03, vertical: _deviceWidth * 0.02),
        height: _deviceHeight * 0.98,
        width: _deviceWidth * 0.97,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            _profileImageField(),
            SizedBox(
              height: _deviceHeight * 0.05,
            ),
            _registerForm(),
            SizedBox(
              height: _deviceHeight * 0.05,
            ),
            _registerButton(),
            SizedBox(
              height: _deviceHeight * 0.02,
            ),
          ],
        ),
      ),
    );
  }

  _profileImageField() {
    return GestureDetector(
      onTap: () {
        GetIt.instance.get<MediaService>().pickImageFromLibrary().then((_file) {
          setState(() {
            _profileImage = _file;
          });
        });
      },
      child: () {
        if (_profileImage != null) {
          return RoundedImageFile(
              key: UniqueKey(),
              image: _profileImage!,
              size: _deviceHeight * 0.15);
        } else {
          return RoundedImageNetwork(
              key: UniqueKey(),
              imagePath:
                  "https://www.hola.com/imagenes/biografias/tom-cruise/85257-tom-cruise.jpg",
              size: _deviceHeight * 0.15);
        }
      }(),
    );
  }

  _registerForm() {
    return Container(
      height: _deviceHeight * 0.35,
      child: Form(
          key: _registerFormKey,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: CustomTextFormField(
                    onSaved: (_value) {
                      setState(() {
                        _name = _value;
                      });
                    },
                    regEx: r".{4,}",
                    hinText: "Nombre",
                    obscureText: false),
              ),
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
          )),
    );
  }

  _registerButton() {
    return RoundedButton(
        name: "Registro",
        height: _deviceHeight * 0.080,
        width: _deviceWidth * 0.65,
        onpressed: () async {
          if (_registerFormKey.currentState!.validate() &&
              _profileImage != null) {
            //Continuar con el registro de usuario
            _registerFormKey.currentState!.save();
            String? _uid = await _auth.registerUserUsingEmailAndPassword(
                _email!, _password!);
            String? _imageUrl = await _cloudStorage.saveUserImageoStorage(
                _uid!, _profileImage!);
            await _db.createUser(_uid, _email!, _name!, _imageUrl!);
            // _navigation.goBack();
            await _auth.logout();
            await _auth.loginUsingEmailAndPassword(_email!, _password!);
          }
        });
  }
}
