import 'package:flutter/material.dart';
import 'package:onboarding_app/view/login/routes/home_page.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(65),
          child: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Text(
                    'Anmelden',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        height: 1.2,
                        letterSpacing: 1.0),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 50,
              width: 200,
              child: AppBar(
                backgroundColor: Colors.white,
                bottom: const TabBar(isScrollable: true, tabs: [
                  Tab(
                    child: Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.black, height: 1.2, letterSpacing: 1.0),
                    ),
                  ),
                  Tab(
                    child: Text('Register',
                        style: TextStyle(
                            color: Colors.black,
                            height: 1.2,
                            letterSpacing: 1.0)),
                  )
                ]),
              ),
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Container(child: const MyStatefulWidget()),
                  Container(child: const Text('data'))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  bool isHiddenPaswword = true;

  final FocusNode _textFieldFocus = FocusNode();
  Color _color = const Color.fromARGB(255, 236, 236, 236);

  @override
  void initState() {
    _textFieldFocus.addListener(() {
      if (_textFieldFocus.hasFocus) {
        setState(() {
          _color = Colors.white;
        });
      } else {
        setState(() {
          _color = _color;
        });
      }
    });
    super.initState();
  }

  @override
  void dispose() {
    nameController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            const SizedBox(
              height: 55,
            ),
            Container(
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: const Text(
                  'Wilkommen zurzck',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      height: 1.2,
                      letterSpacing: 1.0),
                )),
            Container(
              padding: const EdgeInsets.all(10),
              child: const Text(
                'Bitte melden Sie sich hier mit Ihren \n'
                'IhreApotheken.de-Zugangsdaten.an.',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 14, height: 1.2, letterSpacing: 1.0),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                focusNode: _textFieldFocus,
                controller: nameController,
                decoration: InputDecoration(
                  fillColor: _color,
                  filled: true,
                  labelText: 'E Mail-Adresse',
                  focusedBorder: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.grey,
                    ),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(
                        color: Color.fromARGB(0, 158, 158, 158),
                      ),
                      borderRadius: BorderRadius.circular(10)),
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: isHiddenPaswword,
                controller: passwordController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide.none,
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(isHiddenPaswword
                        ? Icons.remove_red_eye
                        : Icons.visibility_off),
                    onPressed: () {
                      isHiddenPaswword = !isHiddenPaswword;
                      setState(() {});
                    },
                    color: isHiddenPaswword ? Colors.grey : Colors.blue,
                  ),
                  fillColor: const Color.fromARGB(255, 236, 236, 236),
                  filled: true,
                  labelText: 'Password',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(
                10,
                20,
                10,
                20,
              ),
              child: RichText(
                text: const TextSpan(
                  style: TextStyle(),
                  children: <TextSpan>[
                    TextSpan(
                        text: 'Hinweis: ',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            height: 1.2,
                            letterSpacing: 1.0,
                            fontStyle: FontStyle.italic)),
                    TextSpan(
                        text:
                            'Das Passwort muss mindestens 8 Zeichen lang sein \nund 1 Grosbuchstaben, 1 Kleinbuchstaben und 1 Zahl\nenthalten.',
                        style: TextStyle(
                            height: 1.2,
                            letterSpacing: 1.0,
                            fontStyle: FontStyle.italic))
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
                height: 50,
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child: ElevatedButton(
                  child: const Text('Weiter',
                      style: TextStyle(height: 1.2, letterSpacing: 1.0)),
                  onPressed: signIn,
                )),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
                  child: TextButton(
                    child: const Text(
                      'PASSWORT VERGESSEN?',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.blue,
                          height: 1.2,
                          letterSpacing: 1.0),
                    ),
                    onPressed: () {
                      //signup screen
                    },
                  ),
                )
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
          ],
        ));
  }

  signIn() {
    Navigator.push(
        context, MaterialPageRoute(builder: (_) => const HomePage()));
  }
}
