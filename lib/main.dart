import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_app/page/home/home_page.dart';
import 'package:instagram_app/page/search_discover_page/discover_page.dart';
import 'package:instagram_app/page/search_discover_page/search_page.dart';
import 'package:instagram_app/page/user_page/user_page.dart';

// Routers pages

void main() {
  runApp(const routersStateles());
}

class routersStateles extends StatelessWidget {
  const routersStateles({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: routersPg(),
      debugShowCheckedModeBanner: false,
      initialRoute: "/routersPage",
      routes: {
        "/routersPage": (context) => routersPg(),
        "/home": (context) => homePg(),
        "/discoverPage": (context) => discoverPg(),
        "/searchPage": (context) => searchPg(),
        "/userPage": (context) => userPg(),
      },
    );
  }
}

class routersPg extends StatefulWidget {
  const routersPg({Key? key}) : super(key: key);

  @override
  State<routersPg> createState() => _routersPgState();
}

class _routersPgState extends State<routersPg> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(
        Duration(
          seconds: 3,
        ), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => homePg()),
          (Route<dynamic> route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 60,
                      height: 60,
                      child: Image.asset(
                          "assets/images/logo_img/instagram_logo_img/instagram_logo.jpg"),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 5,
              left: 0,
              right: 0,
              child: Container(
                width: double.infinity,
                alignment: Alignment.center,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      "from",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 15,
                      ),
                    ),
                    Container(
                      width: 120,
                      height: 50,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        image: DecorationImage(
                          image: AssetImage(
                              "assets/images/logo_img/instagram_logo_img/instagram_meta_logo.png"),
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
