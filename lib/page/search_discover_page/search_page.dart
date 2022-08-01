import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram_app/page/home/home_page.dart';
import 'package:instagram_app/page/search_discover_page/discover_page.dart';
import 'package:instagram_app/page/user_page/user_page.dart';

class searchPg extends StatefulWidget {
  const searchPg({Key? key}) : super(key: key);

  @override
  State<searchPg> createState() => _searchPgState();
}

class _searchPgState extends State<searchPg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          Container(
            width: MediaQuery.of(context).size.width,
            margin: EdgeInsets.only(top: 10),
            alignment: Alignment.center,
            child: Container(
              width: MediaQuery.of(context).size.height,
              margin: const EdgeInsets.only(
                left: 55,
                right: 15,
              ),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.2),
                borderRadius: const BorderRadius.all(
                  Radius.circular(4),
                ),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  hintText: "Ara",
                  border: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1, color: Colors.transparent)),
                  disabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1, color: Colors.transparent)),
                  enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1, color: Colors.transparent)),
                  errorBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1, color: Colors.transparent)),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1, color: Colors.transparent)),
                  focusedErrorBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1, color: Colors.transparent)),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: <Widget>[
            _buildUserAccountList,
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.only(bottom: 8, top: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                    top: BorderSide(color: Colors.grey, width: 0.5),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Flexible(
                      fit: FlexFit.tight,
                      flex: 1,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => homePg(),
                            ),
                          );
                        },
                        child: Container(
                          width: 32,
                          height: 32,
                          margin: EdgeInsets.only(right: 25),
                          child: Image.asset(
                              "assets/images/logo_img/app_icons/home_icon.png"),
                        ),
                      ),
                    ),
                    Flexible(
                      fit: FlexFit.tight,
                      flex: 1,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => discoverPg(),
                            ),
                          );
                        },
                        child: Container(
                          width: 32,
                          height: 32,
                          margin: EdgeInsets.only(right: 25),
                          child: Image.asset(
                              "assets/images/logo_img/app_icons/search_discover_icon.png"),
                        ),
                      ),
                    ),
                    Flexible(
                      fit: FlexFit.tight,
                      flex: 1,
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 32,
                          height: 32,
                          margin: EdgeInsets.only(right: 25),
                          child: Image.asset(
                              "assets/images/logo_img/app_icons/reels_video_icon.png"),
                        ),
                      ),
                    ),
                    Flexible(
                      fit: FlexFit.tight,
                      flex: 1,
                      child: GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 32,
                          height: 32,
                          margin: EdgeInsets.only(right: 25),
                          child: Image.asset(
                              "assets/images/logo_img/app_icons/shopping_bag.png"),
                        ),
                      ),
                    ),
                    Flexible(
                      fit: FlexFit.loose,
                      flex: 1,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => userPg(),
                            ),
                          );
                        },
                        child: Container(
                          width: 32,
                          height: 32,
                          margin: EdgeInsets.only(right: 15),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.all(Radius.circular(50)),
                          ),
                          child: ClipOval(
                            child: Image.network(
                                "https://listelist.com/wp-content/uploads/2019/02/thispersondoesnotexist.jpg"),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget get _buildUserAccountList => Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: <Widget>[
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: ListTile(
                leading: ClipOval(
                  child: Container(
                    width: 57,
                    height: 57,
                    child: CachedNetworkImage(
                      imageUrl:
                          "https://www.mobil13.com/wp-content/uploads/2019/02/yapay-zeka-sahte-yuz5.jpeg",
                      fit: BoxFit.cover,
                      progressIndicatorBuilder:
                          (context, url, downloadProgress) =>
                              CircularProgressIndicator(
                                  value: downloadProgress.progress),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    ),
                  ),
                ),
                title: Text(
                  "VolkanSabriSarıoğlu",
                  style: GoogleFonts.ubuntu(
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ),
                subtitle: Container(
                  width: 140,
                  alignment: Alignment.centerLeft,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: 140,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Volkan Sabri Sarıoğlu",
                          style: GoogleFonts.ubuntu(
                            textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: 140,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Takip Ediyorsun",
                          style: GoogleFonts.ubuntu(
                            textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.close,
                    size: 17,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: ListTile(
                leading: ClipOval(
                  child: Container(
                    width: 57,
                    height: 57,
                    child: CachedNetworkImage(
                      imageUrl:
                          "https://iyikigormusum.com/public/uploads/files/foto1(1).jpg",
                      fit: BoxFit.cover,
                      progressIndicatorBuilder:
                          (context, url, downloadProgress) =>
                              CircularProgressIndicator(
                                  value: downloadProgress.progress),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    ),
                  ),
                ),
                title: Text(
                  "Ayşenazkurt",
                  style: GoogleFonts.ubuntu(
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ),
                subtitle: Container(
                  width: 140,
                  alignment: Alignment.centerLeft,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: 140,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Ayşenaz Kurt",
                          style: GoogleFonts.ubuntu(
                            textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: 140,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Takip Ediyorsun",
                          style: GoogleFonts.ubuntu(
                            textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.close,
                    size: 17,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.only(top: 10, bottom: 10),
              child: ListTile(
                leading: ClipOval(
                  child: Container(
                    width: 57,
                    height: 57,
                    child: CachedNetworkImage(
                      imageUrl: "https://thispersondoesnotexist.com/image",
                      fit: BoxFit.cover,
                      progressIndicatorBuilder:
                          (context, url, downloadProgress) =>
                              CircularProgressIndicator(
                                  value: downloadProgress.progress),
                      errorWidget: (context, url, error) => Icon(Icons.error),
                    ),
                  ),
                ),
                title: Text(
                  "ahmetgüvenilir",
                  style: GoogleFonts.ubuntu(
                    textStyle: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                ),
                subtitle: Container(
                  width: 140,
                  alignment: Alignment.centerLeft,
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: 140,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Ahmet Güvenilir",
                          style: GoogleFonts.ubuntu(
                            textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        width: 140,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Takip Ediyorsun",
                          style: GoogleFonts.ubuntu(
                            textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                trailing: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.close,
                    size: 17,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
}
