import 'dart:async';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: UI(),
    debugShowCheckedModeBanner: false,
    title: 'Flutter UI',
  ));
}

class UI extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _UI();
  }
}

class _UI extends State<UI> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => SignIn()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [Colors.orange.shade900, Colors.orange.shade600],
        )),
        child: Center(
          child: Image.asset(
            'assets/images/logo.png',
            height: 100,
            width: 100,
          ),
        ),
      ),
    );
  }
}

class SignIn extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SignInState();
  }
}

class _SignInState extends State<SignIn> {
  String page = 'login';

  Widget login() {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            padding:
                const EdgeInsets.only(left: 15, top: 0, right: 15, bottom: 0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                      blurRadius: 10,
                      color: Colors.grey,
                      blurStyle: BlurStyle.normal)
                ]),
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Email',
                icon: Icon(Icons.email),
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(0),
                //prefixIcon: Icon(Icons.settings),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            width: double.infinity,
            padding:
                const EdgeInsets.only(left: 15, top: 0, right: 15, bottom: 0),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                      blurRadius: 10,
                      color: Colors.grey,
                      blurStyle: BlurStyle.normal)
                ]),
            child: TextFormField(
              decoration: const InputDecoration(
                hintText: 'Password',
                icon: Icon(Icons.password),
                border: InputBorder.none,
                contentPadding: EdgeInsets.all(0),
                //prefixIcon: Icon(Icons.settings),
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: TextButton(
              child: const Align(
                alignment: Alignment.centerRight,
                child: Text('Forgot Password?'),
              ),
              onPressed: () {},
            ),
          ),
          const SizedBox(height: 80),
          SizedBox(
            width: double.infinity,
            height: 40,
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all(Colors.orange.shade900),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                        18.0), /*side: BorderSide(color: Colors.white)*/
                  ))),
              child: const Text(
                'LOGIN',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              onPressed: () {},
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Dont have an account?',
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              TextButton(
                child: Text(
                  'Register',
                  style: TextStyle(
                      color: Colors.orange.shade900,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  setState(() {
                    page = 'register';
                    print(page);
                  });
                },
              )
            ],
          )
        ]);
  }

  Widget register() {
    //'$String()';
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: double.infinity,
          padding:
              const EdgeInsets.only(left: 15, top: 0, right: 15, bottom: 0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                    blurRadius: 10,
                    color: Colors.grey,
                    blurStyle: BlurStyle.normal)
              ]),
          child: TextFormField(
            decoration: const InputDecoration(
              hintText: 'Full name',
              icon: Icon(Icons.supervised_user_circle),
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(0),
              //prefixIcon: Icon(Icons.settings),
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          width: double.infinity,
          padding:
              const EdgeInsets.only(left: 15, top: 0, right: 15, bottom: 0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                    blurRadius: 10,
                    color: Colors.grey,
                    blurStyle: BlurStyle.normal)
              ]),
          child: TextFormField(
            decoration: const InputDecoration(
              hintText: 'Email',
              icon: Icon(Icons.email),
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(0),
              //prefixIcon: Icon(Icons.settings),
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          width: double.infinity,
          padding:
              const EdgeInsets.only(left: 15, top: 0, right: 15, bottom: 0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                    blurRadius: 10,
                    color: Colors.grey,
                    blurStyle: BlurStyle.normal)
              ]),
          child: TextFormField(
            decoration: const InputDecoration(
              hintText: 'Phone number',
              icon: Icon(Icons.phone),
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(0),
              //prefixIcon: Icon(Icons.settings),
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          width: double.infinity,
          padding:
              const EdgeInsets.only(left: 15, top: 0, right: 15, bottom: 0),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Colors.white,
              boxShadow: const [
                BoxShadow(
                    blurRadius: 10,
                    color: Colors.grey,
                    blurStyle: BlurStyle.normal)
              ]),
          child: TextFormField(
            decoration: const InputDecoration(
              hintText: 'Password',
              icon: Icon(Icons.password),
              border: InputBorder.none,
              contentPadding: EdgeInsets.all(0),
              //prefixIcon: Icon(Icons.settings),
            ),
          ),
        ),
        const SizedBox(height: 40),
        SizedBox(
          width: double.infinity,
          height: 40,
          child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all(Colors.orange.shade900),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                      18.0), /*side: BorderSide(color: Colors.white)*/
                ))),
            child: const Text(
              'REGISTER',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontWeight: FontWeight.bold),
            ),
            onPressed: () {},
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              'Already have an account?',
              style:
                  TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
            TextButton(
              child: Text(
                'Login',
                style: TextStyle(
                    color: Colors.orange.shade900, fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                setState(() {
                  page = 'login';
                });
              },
            )
          ],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const SizedBox(),
        elevation: 0,
        backgroundColor: Colors.orange.shade900,
        bottom: PreferredSize(
            child: Container(
              decoration:
                  const BoxDecoration(color: Color.fromRGBO(250, 250, 250, 1)),
              child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.orange.shade900, Colors.orange.shade600],
                    ),
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(100),
                    ),
                  ),
                  height: 250,
                  padding: const EdgeInsets.all(5),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: Center(
                          child: Image.asset(
                            'assets/images/logo.png',
                            height: 100,
                            width: 100,
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(page.toUpperCase(),
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold))
                            ]),
                      )
                    ],
                  )),
            ),
            preferredSize: Size(
                double.infinity, (MediaQuery.of(context).size.height / 3))),
      ),
      body: SafeArea(
        child: Center(
          child: SizedBox(
            width: ((MediaQuery.of(context).size.width / 5) * 4),
            child: (page == 'login')
                ? login()
                : ((page == 'register') ? register() : login()),
          ),
        ),
      ),
    );
  }
}
