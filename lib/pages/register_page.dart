import 'package:flutter/material.dart';
import 'package:timers_app/widgets/footer.dart';

class RegisterPage extends StatefulWidget {
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: IconThemeData(color: Colors.white),
          backgroundColor: Colors.blue[300],
          centerTitle: true,
          elevation: 0,
          title: Text(
            "Nova conta",
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
          )),
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.7,
              width: MediaQuery.of(context).size.width,
              color: Colors.blue[300],
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 50, vertical: 3),
                        child: Hero(
                          tag: 'hero-login',
                          child: Image.asset(
                            "asserts/logo_head.png",
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: MediaQuery.of(context).size.height * 0.7,
              width: MediaQuery.of(context).size.width,
              decoration: new BoxDecoration(
                  color: Color(0xFFF3F3F5),
                  borderRadius: new BorderRadius.only(
                    topLeft: const Radius.circular(50.0),
                    topRight: const Radius.circular(50.0),
                  )),
              child: buildBody(),
            ),
          ),
        ],
      ),
    );
  }

  TextEditingController _textEditingControllerUser = TextEditingController();

  TextEditingController _textEditingControllerPassword =
      TextEditingController();

  TextEditingController _textEditingControllerPasswordRepeted =
      TextEditingController();  

  TextEditingController _textEditingControllerName =
      TextEditingController();       

  TextEditingController _textEditingControllerInstitution =
      TextEditingController();       

  bool isNoVisiblePassword = false;
  bool isRequest = false;

  Widget buildBody() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        SizedBox(
          height: 0,
        ),
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical : 5, horizontal: 20),
                  child: TextField(
                      controller: this._textEditingControllerName,
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(color: Color(0xFF0F2E48), fontSize: 14),
                      autofocus: false,
                      onSubmitted: (v) {
                        // FocusScope.of(context).requestFocus(focus);
                      },
                      decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.account_box_sharp),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(color: Color(0xFFAAB5C3))),
                          filled: true,
                          fillColor: Color(0xFFF3F3F5),
                          focusColor: Color(0xFFF3F3F5),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(color: Color(0xFFAAB5C3))),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(color: Colors.blue[300])),
                          hintText: "Nome")),
                ),
                 Padding(
                  padding: const EdgeInsets.symmetric(vertical : 5, horizontal: 20),
                  child: TextField(
                      controller: this._textEditingControllerInstitution,
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(color: Color(0xFF0F2E48), fontSize: 14),
                      autofocus: false,
                      onSubmitted: (v) {
                        // FocusScope.of(context).requestFocus(focus);
                      },
                      decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.school),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(color: Color(0xFFAAB5C3))),
                          filled: true,
                          fillColor: Color(0xFFF3F3F5),
                          focusColor: Color(0xFFF3F3F5),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(color: Color(0xFFAAB5C3))),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(color: Colors.blue[300])),
                          hintText: "Instituição")),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical : 5,horizontal: 20),
                  child: TextField(
                      controller: this._textEditingControllerUser,
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(color: Color(0xFF0F2E48), fontSize: 14),
                      autofocus: false,
                      onSubmitted: (v) {
                        // FocusScope.of(context).requestFocus(focus);
                      },
                      decoration: InputDecoration(
                          prefixIcon: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Icon(Icons.email),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(color: Color(0xFFAAB5C3))),
                          filled: true,
                          fillColor: Color(0xFFF3F3F5),
                          focusColor: Color(0xFFF3F3F5),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(color: Color(0xFFAAB5C3))),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(color: Colors.blue[300])),
                          hintText: "email@email.com")),
                ),
                
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  child: TextField(
                      //focusNode: focus,
                      controller: this._textEditingControllerPassword,
                      obscureText: this.isNoVisiblePassword,
                      style: TextStyle(color: Color(0xFF0F2E48), fontSize: 14),
                      onSubmitted: (value) {
                        print(this._textEditingControllerUser.text +
                            " " +
                            this._textEditingControllerPassword.text);
                      },
                      decoration: InputDecoration(
                          prefixIcon: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.vpn_key_sharp)),
                          suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (this.isNoVisiblePassword)
                                    this.isNoVisiblePassword = false;
                                  else
                                    this.isNoVisiblePassword = true;
                                });
                              },
                              child: (this.isNoVisiblePassword)
                                  ? Icon(
                                      Icons.lock_outline_rounded,
                                      size: 15,
                                    )
                                  : Icon(
                                      Icons.lock_open_outlined,
                                      size: 15,
                                    )),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(color: Color(0xFFAAB5C3))),
                          filled: true,
                          fillColor: Color(0xFFF3F3F5),
                          focusColor: Color(0xFFF3F3F5),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(color: Color(0xFFAAB5C3))),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(color: Color(0xFFE7004C))),
                          hintText: "Senha")),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
                  child: TextField(
                      //focusNode: focus,
                      controller: this._textEditingControllerPasswordRepeted,
                      obscureText: this.isNoVisiblePassword,
                      style: TextStyle(color: Color(0xFF0F2E48), fontSize: 14),
                      onSubmitted: (value) {
                        print(this._textEditingControllerUser.text +
                            " " +
                            this._textEditingControllerPassword.text);
                      },
                      decoration: InputDecoration(
                          prefixIcon: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Icon(Icons.vpn_key_sharp)),
                          suffixIcon: GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (this.isNoVisiblePassword)
                                    this.isNoVisiblePassword = false;
                                  else
                                    this.isNoVisiblePassword = true;
                                });
                              },
                              child: (this.isNoVisiblePassword)
                                  ? Icon(
                                      Icons.lock_outline_rounded,
                                      size: 15,
                                    )
                                  : Icon(
                                      Icons.lock_open_outlined,
                                      size: 15,
                                    )),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(color: Color(0xFFAAB5C3))),
                          filled: true,
                          fillColor: Color(0xFFF3F3F5),
                          focusColor: Color(0xFFF3F3F5),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(color: Color(0xFFAAB5C3))),
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(25),
                              borderSide: BorderSide(color: Color(0xFFE7004C))),
                          hintText: "Repita a senha")),
                ),
                GestureDetector(
                  onTap: () {},
                  child: SizedBox(
                      height: MediaQuery.of(context).size.height * 0.07,
                      width: MediaQuery.of(context).size.width * 0.7,
                      child: Card(
                          elevation: 10,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(40),
                          ),
                          color: Colors.blue[300],
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: Center(
                                child: Text(
                              "Registrar",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            )),
                          ))),
                ),
                
                
              ],
            ),
          ),
        ),
        Align(
                  alignment: Alignment.bottomCenter,
                  child: Footer(),
                )
      ],
    );
  }

  void setIsRequest(bool isRequest) {
    setState(() {
      this.isRequest = isRequest;
    });
  }
}