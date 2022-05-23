//packages
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

//widgets
import '../widgets/top_bar.dart';
import '../widgets/custom_list_view_tiles.dart';
import '../widgets/custom_input_fields.dart';

//models
import '../models/chat.dart';
import '../models/chat_message.dart';

//providers
import '../providers/authentication_provider.dart';
import '../providers/chat_page_prviders.dart';

class ChatPage extends StatefulWidget {
  final Chat chat;

  ChatPage({required this.chat});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  late double _deviceHeight;
  late double _deviceWidth;

  late AuthenticationProvider _auth;
  late ChatPageProvider _pageProvider;

  late GlobalKey<FormState> _messageFormState;
  late ScrollController _messagesListViewController;

  @override
  void initState() {
    super.initState();
    _messageFormState = GlobalKey<FormState>();
    _messagesListViewController = ScrollController();
  }

  @override
  Widget build(BuildContext context) {
    _deviceHeight = MediaQuery.of(context).size.height;
    _deviceWidth = MediaQuery.of(context).size.width;
    _auth = Provider.of<AuthenticationProvider>(context);
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ChatPageProvider>(
            create: (_) => ChatPageProvider(
                widget.chat.uid, _auth, _messagesListViewController))
      ],
      child: _buildUI(),
    );
  }

  _buildUI() {
    return Builder(builder: (BuildContext _context) {
      _pageProvider = _context.watch<ChatPageProvider>();
      return Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: _deviceWidth * 0.02,
              vertical: _deviceHeight * 0.02,
            ),
            height: _deviceHeight,
            width: _deviceWidth * 0.97,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TopBar(
                  widget.chat.title(),
                  fontSize: 25,
                  primaryAction: IconButton(
                      onPressed: () {
                        _pageProvider.deleteChat();
                      },
                      icon: const Icon(
                        Icons.delete,
                        color: Color.fromARGB(255, 238, 15, 15),
                      )),
                  secondaryAction: IconButton(
                      onPressed: () {
                        _pageProvider.goBack();
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Color.fromRGBO(0, 82, 218, 1.0),
                      )),
                ),
                _messagesListView(),
                _sendMessageForm()
              ],
            ),
          ),
        ),
      );
    });
  }

  _messagesListView() {
    if (_pageProvider.messages != null) {
      if (_pageProvider.messages!.length != 0) {
        return Container(
          height: _deviceHeight * 0.74,
          child: ListView.builder(
              controller: _messagesListViewController,
              itemCount: _pageProvider.messages!.length,
              itemBuilder: (BuildContext _context, int index) {
                ChatMessage _message = _pageProvider.messages![index];
                bool _isOwnMessage = _message.senderID == _auth.user.uid;
                return Container(
                    child: CustomChatListViewTile(
                        width: _deviceWidth * 0.75,
                        deviceHeight: _deviceHeight,
                        isOwnMessage: _isOwnMessage,
                        message: _message,
                        sender: widget.chat.members
                            .where((_m) => _m.uid == _message.senderID)
                            .first));
              }),
        );
      } else {
        return const Align(
          alignment: Alignment.center,
          child: Text(
            "be the first to say hello",
            style: TextStyle(color: Colors.white),
          ),
        );
      }
    } else {
      return const Center(
        child: CircularProgressIndicator(
          color: Colors.white,
        ),
      );
    }
  }

  _sendMessageForm() {
    return Container(
      height: _deviceHeight * 0.06,
      decoration: BoxDecoration(
        color: Color.fromRGBO(30, 29, 37, 1.0),
        borderRadius: BorderRadius.circular(100),
      ),
      margin: EdgeInsets.symmetric(
          horizontal: _deviceWidth * 0.02, vertical: _deviceHeight * 0.03),
      child: Form(
          key: _messageFormState,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _messageTextField(),
              _sendMessageButton(),
              _imageMessageButon()
            ],
          )),
    );
  }

  _messageTextField() {
    return SizedBox(
      width: _deviceWidth * 0.55,
      child: CustomTextFormField(
          onSaved: (_value) {
            _pageProvider.message =
                _value; //vamos a tomar el valor que se pasa y la función automática para el campo de formulario de texto.
            print(_pageProvider.message);
          },
          regEx: r"^(?!\s*$).+",
          hinText: "Type a message",
          obscureText: false),
    );
  }

  _sendMessageButton() {
    double _size = _deviceHeight * 0.04;
    return Container(
      height: _size,
      width: _size,
      child: IconButton(
          onPressed: () {
            if (_messageFormState.currentState!.validate()) {
              print(_messageFormState.currentState!.validate());
              //tomar el estado del formulario de mensaje y quiero tomar el estado actual, y quiero validar que realmente tenemos entradas válidas.
              _messageFormState.currentState!
                  .save(); //tomar el estado del formulario de mensaje, ese estado actual y llamaremos a la función de guardar.
              // print(_messageFormState.currentState!);
              _pageProvider
                  .sendTextMessage(); //Y una vez que lo hayamos guardado, lo siguiente que haremos es elegir nuestro proveedor y luego usar esta función de envío de mensajes de texto. Así que ahora si ordeno guardar y lo que haré es que, en lugar de solo hacer esto, voy a ir a la definición del botón Enviar mensaje de texto y les diré lo que sucederá.
              _messageFormState.currentState!.reset();
            }
          },
          icon: const Icon(
            Icons.send,
            color: Colors.white,
          )),
    );
  }

  _imageMessageButon() {
    double _size = _deviceHeight * 0.04;
    return Container(
      height: _size,
      width: _size,
      child: FloatingActionButton(
        backgroundColor: Color.fromRGBO(
          0,
          82,
          218,
          1.0,
        ),
        onPressed: () {
          _pageProvider.sendImageMessage();
        },
        child: Icon(Icons.camera_enhance),
      ),
    );
  }
}
