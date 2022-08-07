import 'package:flutter/material.dart';

// Packets from pub dev address path
import 'package:google_fonts/google_fonts.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:bottom_sheet/bottom_sheet.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:pinch_zoom_image_last/pinch_zoom_image_last.dart';
import 'package:readmore/readmore.dart';

// Yönlendirme Adres Sayfaları
import 'package:instagram_app/page/user_page/user_page.dart';
import '../search_discover_page/discover_page.dart';

class homePg extends StatefulWidget {
  const homePg({Key? key}) : super(key: key);

  @override
  State<homePg> createState() => _homePgState();
}

class _homePgState extends State<homePg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          children: <Widget>[
            Text(
              "Instagram",
              style: GoogleFonts.lobster(
                textStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 24,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            Container(
              width: 20,
              height: 20,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    bottom: -18,
                    left: -10,
                    child: PopupMenuButton(
                      icon: const Icon(
                        Icons.keyboard_arrow_down,
                        color: Colors.black,
                      ),
                      itemBuilder: (context) => [
                        PopupMenuItem(
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              child: Row(
                                children: const <Widget>[
                                  Expanded(
                                    child: Text(
                                      "Takip Edilenler",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                  Icon(
                                    Icons.account_circle_outlined,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        PopupMenuItem(
                          child: GestureDetector(
                            onTap: () {},
                            child: Container(
                              child: Row(
                                children: const <Widget>[
                                  Expanded(
                                    child: Text(
                                      "Favoriler",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ),
                                  Icon(
                                    Icons.star_border_outlined,
                                    color: Colors.black,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(left: 5, right: 5, top: 15, bottom: 10),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                width: 35,
                height: 35,
                child: Image.asset(
                    "assets/images/logo_img/app_icons/post_add.png"),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 5, right: 5, top: 15, bottom: 10),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                width: 35,
                height: 35,
                child: Image.asset(
                    "assets/images/logo_img/app_icons/like_nofication.png"),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 5, right: 5, top: 15, bottom: 10),
            child: GestureDetector(
              onTap: () {},
              child: Container(
                width: 35,
                height: 35,
                child: Image.asset(
                    "assets/images/logo_img/app_icons/message_icon.png"),
              ),
            ),
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    _buildTopStoryList,
                    _buildPostBox,
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ),
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
                        onTap: () {},
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

  Widget get _buildTopStoryList => Container(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 105,
                margin: EdgeInsets.only(
                  top: 10,
                ),
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(color: Colors.grey, width: 0.5),
                  ),
                ),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      width: 85,
                      child: Stack(
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              ClipOval(
                                child: Container(
                                  width: 75,
                                  height: 75,
                                  child: Center(
                                    child: ClipOval(
                                      child: Container(
                                        width: 70,
                                        height: 70,
                                        color: Colors.white,
                                        child: Center(
                                          child: ClipOval(
                                            child: Container(
                                              width: 65,
                                              height: 65,
                                              child: CachedNetworkImage(
                                                imageUrl:
                                                    "https://listelist.com/wp-content/uploads/2019/02/thispersondoesnotexist.jpg",
                                                progressIndicatorBuilder:
                                                    (context, url,
                                                            downloadProgress) =>
                                                        CircularProgressIndicator(
                                                            value:
                                                                downloadProgress
                                                                    .progress),
                                                errorWidget:
                                                    (context, url, error) =>
                                                        Icon(Icons.error),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Text(
                                "Hikayen",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                ),
                              ),
                            ],
                          ),
                          Positioned(
                            right: 14,
                            bottom: 35,
                            child: ClipOval(
                              child: Container(
                                width: 20,
                                height: 20,
                                color: Colors.lightBlue,
                                child: Center(
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 18,
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      width: 85,
                      child: Column(
                        children: <Widget>[
                          ClipOval(
                            child: Container(
                              width: 75,
                              height: 75,
                              decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [Colors.purple, Colors.orange])),
                              child: Center(
                                child: ClipOval(
                                  child: Container(
                                    width: 70,
                                    height: 70,
                                    color: Colors.white,
                                    child: Center(
                                      child: ClipOval(
                                        child: Container(
                                          width: 65,
                                          height: 65,
                                          child: CachedNetworkImage(
                                            imageUrl:
                                                "https://thispersondoesnotexist.com/image",
                                            progressIndicatorBuilder: (context,
                                                    url, downloadProgress) =>
                                                CircularProgressIndicator(
                                                    value: downloadProgress
                                                        .progress),
                                            errorWidget:
                                                (context, url, error) =>
                                                    Icon(Icons.error),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "ahmetgüve..",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 85,
                      child: Column(
                        children: <Widget>[
                          ClipOval(
                            child: Container(
                              width: 75,
                              height: 75,
                              decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [Colors.purple, Colors.orange])),
                              child: Center(
                                child: ClipOval(
                                  child: Container(
                                    width: 70,
                                    height: 70,
                                    color: Colors.white,
                                    child: Center(
                                      child: ClipOval(
                                        child: Container(
                                          width: 65,
                                          height: 65,
                                          child: CachedNetworkImage(
                                            imageUrl:
                                                "https://store.donanimhaber.com/2a/71/96/2a7196fa4e85b977760a7f33586ee603.jpg",
                                            progressIndicatorBuilder: (context,
                                                    url, downloadProgress) =>
                                                CircularProgressIndicator(
                                                    value: downloadProgress
                                                        .progress),
                                            errorWidget:
                                                (context, url, error) =>
                                                    Icon(Icons.error),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "hasan_bozd..",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 85,
                      child: Column(
                        children: <Widget>[
                          ClipOval(
                            child: Container(
                              width: 75,
                              height: 75,
                              decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [Colors.purple, Colors.orange])),
                              child: Center(
                                child: ClipOval(
                                  child: Container(
                                    width: 70,
                                    height: 70,
                                    color: Colors.white,
                                    child: Center(
                                      child: ClipOval(
                                        child: Container(
                                          width: 65,
                                          height: 65,
                                          child: CachedNetworkImage(
                                            imageUrl:
                                                "https://iyikigormusum.com/public/uploads/files/foto1(1).jpg",
                                            progressIndicatorBuilder: (context,
                                                    url, downloadProgress) =>
                                                CircularProgressIndicator(
                                                    value: downloadProgress
                                                        .progress),
                                            errorWidget:
                                                (context, url, error) =>
                                                    Icon(Icons.error),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "ayşenazKurt",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: 85,
                      child: Column(
                        children: <Widget>[
                          ClipOval(
                            child: Container(
                              width: 75,
                              height: 75,
                              decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                      begin: Alignment.topLeft,
                                      end: Alignment.bottomRight,
                                      colors: [Colors.purple, Colors.orange])),
                              child: Center(
                                child: ClipOval(
                                  child: Container(
                                    width: 70,
                                    height: 70,
                                    color: Colors.white,
                                    child: Center(
                                      child: ClipOval(
                                        child: Container(
                                          width: 65,
                                          height: 65,
                                          child: CachedNetworkImage(
                                            imageUrl:
                                                "https://www.mobil13.com/wp-content/uploads/2019/02/yapay-zeka-sahte-yuz5.jpeg",
                                            progressIndicatorBuilder: (context,
                                                    url, downloadProgress) =>
                                                CircularProgressIndicator(
                                                    value: downloadProgress
                                                        .progress),
                                            errorWidget:
                                                (context, url, error) =>
                                                    Icon(Icons.error),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                            "volkan_sabr...",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      );

  Widget get _buildPostBox => Container(
        width: double.infinity,
        padding: EdgeInsets.only(top: 5),
        child: Column(
          children: <Widget>[
            // post header
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(color: Colors.grey, width: 0.5),
                ),
              ),
              child: ListTile(
                leading: ClipOval(
                  child: Container(
                    width: 37,
                    height: 37,
                    decoration: const BoxDecoration(
                        gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight,
                            colors: [Colors.purple, Colors.orange])),
                    child: Center(
                      child: ClipOval(
                        child: Container(
                            width: 33,
                            height: 33,
                            child: Image.asset(
                                "assets/images/user_profile_img/user_own_profile_img/user_own_profile_img.jpg")),
                      ),
                    ),
                  ),
                ),
                title: Text("nuhcanatar",
                    style: GoogleFonts.roboto(
                      textStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    )),
                trailing: GestureDetector(
                  onTap: () {
                    _onBottomShet();
                  },
                  child: Container(
                    width: 17,
                    height: 18,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(
                            "assets/images/logo_img/app_icons/icons8-menu-vertical-50.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            // post body
            Container(
              width: double.infinity,
              child: CachedNetworkImage(
                imageUrl:
                    "https://uploads-ssl.webflow.com/5f841209f4e71b2d70034471/6078b650748b8558d46ffb7f_Flutter%20app%20development.png",
                progressIndicatorBuilder: (context, url, downloadProgress) =>
                    CircularProgressIndicator(value: downloadProgress.progress),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ),
            // post footer
            Container(
              width: double.infinity,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 30,
                          height: 30,
                          margin: EdgeInsets.all(7),
                          child: Image.asset(
                              "assets/images/logo_img/app_icons/like_nofication.png"),
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          margin: EdgeInsets.all(7),
                          child: Image.asset(
                              "assets/images/logo_img/app_icons/comment_icon.png"),
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          margin: EdgeInsets.all(7),
                          child: Image.asset(
                              "assets/images/logo_img/app_icons/share_send_icon.png"),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 30,
                    height: 30,
                    margin: EdgeInsets.all(7),
                    child: Image.asset(
                        "assets/images/logo_img/app_icons/post_saved_icon.png"),
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(left: 10, right: 10),
              child: Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerLeft,
                    child: GestureDetector(
                      onTap: () {},
                      child: Text(
                        "1.257 beğenme",
                        style: GoogleFonts.ubuntu(
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  Container(
                    width: double.infinity,
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: double.infinity,
                          child: GestureDetector(
                            onTap: () {},
                            child: Text(
                              "nuhcanatar ",
                              style: GoogleFonts.ubuntu(
                                textStyle: const TextStyle(
                                  color: Colors.black,
                                  fontSize: 13.5,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Container(
                          width: double.infinity,
                          child: const ReadMoreText(
                            'Flutter is Google’s mobile UI open source framework to build high-quality native (super fast) interfaces for iOS and Android apps with the unified codebase.',
                            trimLines: 2,
                            colorClickableText: Colors.pink,
                            trimMode: TrimMode.Line,
                            trimCollapsedText: 'Show more',
                            trimExpandedText: 'Show less',
                            moreStyle: TextStyle(
                                fontSize: 14, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Container(
                          width: double.infinity,
                          child: GestureDetector(
                            onTap: () {},
                            child: Text(
                              "567 yorumun tümünü gör ",
                              style: GoogleFonts.ubuntu(
                                textStyle: const TextStyle(
                                  color: Colors.black54,
                                  fontSize: 13.5,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Container(
                          width: double.infinity,
                          child: GestureDetector(
                            onTap: () {},
                            child: Text(
                              "18 saat önce",
                              style: GoogleFonts.ubuntu(
                                textStyle: const TextStyle(
                                  color: Colors.black54,
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      );

  void _onBottomShet() {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        elevation: 0,
        context: context,
        builder: (context) {
          return Container(
            width: double.infinity,
            height: 450,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
            ),
            child: Column(
              children: <Widget>[
                Container(
                  width: 50,
                  height: 5,
                  margin: EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.all(
                      Radius.circular(4),
                    ),
                  ),
                ),
                // Top
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(
                    top: 10,
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            ClipOval(
                              child: Container(
                                width: 65,
                                height: 65,
                                color: Colors.black54,
                                child: Center(
                                  child: ClipOval(
                                    child: Container(
                                      width: 63,
                                      height: 63,
                                      color: Colors.white,
                                      child: Center(
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.share_outlined,
                                            color: Colors.black54,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              "Paylaş",
                              style: GoogleFonts.ubuntu(
                                textStyle: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 13.5,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            ClipOval(
                              child: Container(
                                width: 65,
                                height: 65,
                                color: Colors.black54,
                                child: Center(
                                  child: ClipOval(
                                    child: Container(
                                      width: 63,
                                      height: 63,
                                      color: Colors.white,
                                      child: Center(
                                        child: RotationTransition(
                                          turns: new AlwaysStoppedAnimation(
                                              360 / 415),
                                          child: new Icon(
                                            Icons.link,
                                            color: Colors.black54,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              "Bağlantı",
                              style: GoogleFonts.ubuntu(
                                textStyle: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 13.5,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 25,
                      ),
                      Container(
                        margin: EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            ClipOval(
                              child: Container(
                                width: 65,
                                height: 65,
                                color: Colors.red,
                                child: Center(
                                  child: ClipOval(
                                    child: Container(
                                      width: 63,
                                      height: 63,
                                      color: Colors.white,
                                      child: Center(
                                        child: IconButton(
                                          onPressed: () {},
                                          icon: Icon(
                                            Icons.report_outlined,
                                            color: Colors.red,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              "Şikayet Et",
                              style: GoogleFonts.ubuntu(
                                textStyle: TextStyle(
                                  color: Colors.red,
                                  fontSize: 13.5,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),

                // body
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(color: Colors.grey, width: 0.4),
                      ),
                    ),
                    child: Text(
                      "Bu Fotoğrafı remiskle",
                      style: GoogleFonts.ubuntu(
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(color: Colors.grey, width: 0.4),
                      ),
                    ),
                    child: Text(
                      "Bu gönderiyi neden görüyorsun?",
                      style: GoogleFonts.ubuntu(
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(color: Colors.grey, width: 0.4),
                      ),
                    ),
                    child: Text(
                      "Gizle",
                      style: GoogleFonts.ubuntu(
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(color: Colors.grey, width: 0.4),
                      ),
                    ),
                    child: Text(
                      "Bu Hesap Hakkında",
                      style: GoogleFonts.ubuntu(
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(color: Colors.grey, width: 0.4),
                      ),
                    ),
                    child: Text(
                      "Takibi Bırak",
                      style: GoogleFonts.ubuntu(
                        textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: 17,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }
}
