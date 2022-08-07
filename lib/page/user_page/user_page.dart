import 'package:cached_network_image/cached_network_image.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram_app/page/home/home_page.dart';
import 'package:instagram_app/page/search_discover_page/discover_page.dart';

class userPg extends StatefulWidget {
  const userPg({Key? key}) : super(key: key);

  @override
  State<userPg> createState() => _userPgState();
}

class _userPgState extends State<userPg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: <Widget>[
            Text(
              "bengü_demiroğ",
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.5,
                fontWeight: FontWeight.bold,
              ),
            ),
            IconButton(
              onPressed: () {
                _onBottomShetMenuAccountSelect();
              },
              icon: Icon(
                Icons.keyboard_arrow_down,
                color: Colors.black,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.add_box_outlined,
              color: Colors.black,
              size: 30,
            ),
          ),
          IconButton(
            onPressed: () {
              _onBottomShetMenu();
            },
            icon: Icon(
              Icons.menu,
              color: Colors.black,
              size: 30,
            ),
          ),
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
              color: Colors.white,
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    // profile top episode content
                    _builduserTopEpisodeContent,
                    // profile top episode 2 content
                    _buildUserTopBodyEpisodeContent,
                    // profile top episode biyografy content
                    _buildUserTopBodyBiyografyContent,
                    // profile user setting select buttons
                    _buildUserSettingSelectButtons,
                    // profil user own story list
                    _buildUserOwnStoryList,
                    // user profile own post list tabbar
                    _buildBodyTabBtnOwnPostList,
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

  Widget get _buildBodyTabBtnOwnPostList => Container(
        width: double.infinity,
        height: 500,
        child: ContainedTabBarView(
          tabs: [
            Icon(
              Icons.grid_on,
              color: Colors.black,
            ),
            Icon(
              Icons.account_box_outlined,
              color: Colors.black,
            ),
          ],
          views: [
            Container(
              width: double.infinity,
              child: CustomScrollView(
                slivers: <Widget>[
                  SliverGrid.count(
                    crossAxisCount: 3,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 98,
                          height: 98,
                          margin: EdgeInsets.only(right: 3, top: 3),
                          child: CachedNetworkImage(
                            imageUrl:
                                "https://fotolifeakademi.com/uploads/2020/04/doga-fotografciligi-724x394.webp",
                            fit: BoxFit.cover,
                            progressIndicatorBuilder:
                                (context, url, downloadProgress) =>
                                    CircularProgressIndicator(
                                        value: downloadProgress.progress),
                            errorWidget: (context, url, error) =>
                                Icon(Icons.error),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 98,
                          height: 98,
                          margin: EdgeInsets.only(right: 3, top: 3),
                          child: CachedNetworkImage(
                            imageUrl:
                                "https://www.neredekal.com/res/blog/1453735513_kapakdoga.jpg",
                            fit: BoxFit.cover,
                            progressIndicatorBuilder:
                                (context, url, downloadProgress) =>
                                    CircularProgressIndicator(
                                        value: downloadProgress.progress),
                            errorWidget: (context, url, error) =>
                                Icon(Icons.error),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 98,
                          height: 98,
                          margin: EdgeInsets.only(top: 3),
                          child: CachedNetworkImage(
                            imageUrl:
                                "https://icdn.ensonhaber.com/resimler/galeri/1_10074.jpg",
                            fit: BoxFit.cover,
                            progressIndicatorBuilder:
                                (context, url, downloadProgress) =>
                                    CircularProgressIndicator(
                                        value: downloadProgress.progress),
                            errorWidget: (context, url, error) =>
                                Icon(Icons.error),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 98,
                          height: 98,
                          margin: EdgeInsets.only(right: 3, top: 3),
                          child: CachedNetworkImage(
                            imageUrl:
                                "https://www.neredekal.com/res/blog/1453735513_kapakdoga.jpg",
                            fit: BoxFit.cover,
                            progressIndicatorBuilder:
                                (context, url, downloadProgress) =>
                                    CircularProgressIndicator(
                                        value: downloadProgress.progress),
                            errorWidget: (context, url, error) =>
                                Icon(Icons.error),
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 98,
                          height: 98,
                          margin: EdgeInsets.only(top: 3),
                          child: CachedNetworkImage(
                            imageUrl:
                                "http://www.martidergisi.com/wp-content/uploads/2011/03/manzara-3.jpg",
                            fit: BoxFit.cover,
                            progressIndicatorBuilder:
                                (context, url, downloadProgress) =>
                                    CircularProgressIndicator(
                                        value: downloadProgress.progress),
                            errorWidget: (context, url, error) =>
                                Icon(Icons.error),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              color: Colors.white,
            ),
          ],
          onChange: (index) => print(index),
        ),
      );

  Widget get _buildUserOwnStoryList => Container(
        width: double.infinity,
        height: 130,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            SizedBox(
              width: 15,
            ),
            Container(
              width: 85,
              child: Column(
                children: <Widget>[
                  Container(
                    child: ClipOval(
                      child: Container(
                        width: 75,
                        height: 75,
                        color: Colors.grey,
                        child: Center(
                          child: ClipOval(
                            child: Container(
                              width: 72,
                              height: 72,
                              color: Colors.white,
                              child: Center(
                                child: ClipOval(
                                  child: Container(
                                    width: 68,
                                    height: 68,
                                    child: CachedNetworkImage(
                                      imageUrl:
                                          "https://i.pinimg.com/474x/6d/cc/d0/6dccd07503363a964aa8f0667de708fc.jpg",
                                      fit: BoxFit.cover,
                                      progressIndicatorBuilder: (context, url,
                                              downloadProgress) =>
                                          CircularProgressIndicator(
                                              value: downloadProgress.progress),
                                      errorWidget: (context, url, error) =>
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
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    "London City",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13.4,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 85,
              child: Column(
                children: <Widget>[
                  Container(
                    child: ClipOval(
                      child: Container(
                        width: 75,
                        height: 75,
                        color: Colors.grey,
                        child: Center(
                          child: ClipOval(
                            child: Container(
                              width: 72,
                              height: 72,
                              color: Colors.white,
                              child: Center(
                                child: ClipOval(
                                  child: Container(
                                    width: 68,
                                    height: 68,
                                    child: CachedNetworkImage(
                                      imageUrl:
                                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRvfpJGlg3bVLANlYYfxjg6Iy3wSB98C-hk6Q&usqp=CAU",
                                      fit: BoxFit.cover,
                                      progressIndicatorBuilder: (context, url,
                                              downloadProgress) =>
                                          CircularProgressIndicator(
                                              value: downloadProgress.progress),
                                      errorWidget: (context, url, error) =>
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
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    "City 🌇",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13.4,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 85,
              child: Column(
                children: <Widget>[
                  Container(
                    child: ClipOval(
                      child: Container(
                        width: 75,
                        height: 75,
                        color: Colors.grey,
                        child: Center(
                          child: ClipOval(
                            child: Container(
                              width: 72,
                              height: 72,
                              color: Colors.white,
                              child: Center(
                                child: ClipOval(
                                  child: Container(
                                    width: 68,
                                    height: 68,
                                    child: CachedNetworkImage(
                                      imageUrl:
                                          "https://cdn.pixabay.com/photo/2020/09/27/23/39/sunset-5608136_960_720.jpg",
                                      fit: BoxFit.cover,
                                      progressIndicatorBuilder: (context, url,
                                              downloadProgress) =>
                                          CircularProgressIndicator(
                                              value: downloadProgress.progress),
                                      errorWidget: (context, url, error) =>
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
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    "Deniz 🌊",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13.4,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 85,
              child: Column(
                children: <Widget>[
                  Container(
                    child: ClipOval(
                      child: Container(
                        width: 75,
                        height: 75,
                        color: Colors.grey,
                        child: Center(
                          child: ClipOval(
                            child: Container(
                              width: 72,
                              height: 72,
                              color: Colors.white,
                              child: Center(
                                child: ClipOval(
                                  child: Container(
                                    width: 68,
                                    height: 68,
                                    child: CachedNetworkImage(
                                      imageUrl:
                                          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQQbjSAr_SHuvum_iuck7Oxh88BWTjtLFsm6Zqfey6rLOxsAcIL9ynUlF_ab1tDEWJX9mc&usqp=CAU",
                                      fit: BoxFit.cover,
                                      progressIndicatorBuilder: (context, url,
                                              downloadProgress) =>
                                          CircularProgressIndicator(
                                              value: downloadProgress.progress),
                                      errorWidget: (context, url, error) =>
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
                  ),
                  SizedBox(
                    height: 7,
                  ),
                  Text(
                    "City 4🏙️",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13.4,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 15,
            ),
          ],
        ),
      );

  Widget get _buildUserSettingSelectButtons => Container(
        width: double.infinity,
        padding: EdgeInsets.all(15),
        child: Column(
          children: <Widget>[
            GestureDetector(
              onTap: () {},
              child: Container(
                width: double.infinity,
                padding: EdgeInsets.all(6),
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.3),
                  borderRadius: BorderRadius.all(
                    Radius.circular(4),
                  ),
                ),
                child: Text(
                  "Profili Düzenle",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.all(5),
              child: Row(
                children: <Widget>[
                  Flexible(
                    fit: FlexFit.tight,
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.3),
                          borderRadius: BorderRadius.all(
                            Radius.circular(4),
                          ),
                        ),
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(right: 3),
                        padding: EdgeInsets.all(6),
                        child: Text(
                          "Reklam Ar...",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.5,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    fit: FlexFit.tight,
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.3),
                          borderRadius: BorderRadius.all(
                            Radius.circular(4),
                          ),
                        ),
                        alignment: Alignment.center,
                        margin: EdgeInsets.all(3),
                        padding: EdgeInsets.all(6),
                        child: Text(
                          "İstatistikler",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.5,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    fit: FlexFit.tight,
                    flex: 1,
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.3),
                          borderRadius: BorderRadius.all(
                            Radius.circular(4),
                          ),
                        ),
                        margin: EdgeInsets.only(left: 3),
                        alignment: Alignment.center,
                        child: Text(
                          "Mağaza Ek...",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 14.5,
                            fontWeight: FontWeight.bold,
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
      );

  Widget get _buildUserTopBodyBiyografyContent => Container(
        width: double.infinity,
        padding: EdgeInsets.only(left: 15, right: 15),
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              alignment: Alignment.centerLeft,
              child: Text(
                "Bengü Demiroğ",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.5,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: double.infinity,
              alignment: Alignment.centerLeft,
              child: Text(
                "Blog Yazarı",
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 14,
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(right: 25),
              child: Wrap(
                children: <Widget>[
                  Text(
                    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. ",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13.5,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              width: double.infinity,
              alignment: Alignment.centerLeft,
              child: GestureDetector(
                onTap: () {},
                child: Text(
                  "www.medium.com",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ],
        ),
      );

  Widget get _buildUserTopBodyEpisodeContent => Container(
        width: double.infinity,
        padding: EdgeInsets.all(15),
        child: Row(
          children: <Widget>[
            Container(
              child: ClipOval(
                child: Container(
                  width: 90,
                  height: 90,
                  color: Colors.purple,
                  child: CachedNetworkImage(
                    imageUrl:
                        "https://listelist.com/wp-content/uploads/2019/02/thispersondoesnotexist.jpg",
                    fit: BoxFit.cover,
                    progressIndicatorBuilder:
                        (context, url, downloadProgress) =>
                            CircularProgressIndicator(
                                value: downloadProgress.progress),
                    errorWidget: (context, url, error) => Icon(Icons.error),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 15),
                child: Row(
                  children: <Widget>[
                    Flexible(
                      fit: FlexFit.tight,
                      flex: 1,
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            Text(
                              "5",
                              style: GoogleFonts.ubuntu(
                                textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Gönderi",
                              style: GoogleFonts.ubuntu(
                                textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                      fit: FlexFit.tight,
                      flex: 1,
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            Text(
                              "14.5M",
                              style: GoogleFonts.ubuntu(
                                textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Takipçi",
                              style: GoogleFonts.ubuntu(
                                textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                      fit: FlexFit.tight,
                      flex: 1,
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            Text(
                              "175",
                              style: GoogleFonts.ubuntu(
                                textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Text(
                              "Takip",
                              style: GoogleFonts.ubuntu(
                                textStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 13,
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
            ),
          ],
        ),
      );

  Widget get _builduserTopEpisodeContent => GestureDetector(
        onTap: () {},
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(15),
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(color: Colors.grey, width: 0.5),
              bottom: BorderSide(color: Colors.grey, width: 0.5),
            ),
          ),
          child: Row(
            children: <Widget>[
              Expanded(
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: double.infinity,
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Profesyonel Pano",
                          style: GoogleFonts.ubuntu(
                            textStyle: TextStyle(
                              color: Colors.black,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
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
                        child: Text(
                          "İçerik üreticilere özel araçlar ve kaynaklar.",
                          style: GoogleFonts.ubuntu(
                            textStyle: TextStyle(
                              color: Colors.black54,
                              fontSize: 13.5,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Icon(
                Icons.arrow_forward_ios,
                color: Colors.black54,
                size: 16,
              ),
            ],
          ),
        ),
      );

  void _onBottomShetMenu() {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        elevation: 0,
        context: context,
        builder: (context) {
          return Container(
            width: double.infinity,
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
                  width: 60,
                  height: 6,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.all(
                      Radius.circular(4),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    margin: EdgeInsets.only(left: 15, right: 15, top: 5),
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 25,
                          height: 25,
                          child: Image.asset(
                            "assets/images/logo_img/app_icons/icons8-settings-50.png",
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Text(
                            "Ayarlar",
                            style: GoogleFonts.ubuntu(
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    margin: EdgeInsets.only(left: 15, right: 15, top: 5),
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 25,
                          height: 25,
                          child: Image.asset(
                            "assets/images/logo_img/app_icons/icons8-time-machine-50.png",
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Text(
                            "Arşiv",
                            style: GoogleFonts.ubuntu(
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    margin: EdgeInsets.only(left: 15, right: 15, top: 5),
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 25,
                          height: 25,
                          child: Image.asset(
                            "assets/images/logo_img/app_icons/icons8-bar-chart-50.png",
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Text(
                            "İstatistikleri Al",
                            style: GoogleFonts.ubuntu(
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    margin: EdgeInsets.only(left: 15, right: 15, top: 5),
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 25,
                          height: 25,
                          child: Image.asset(
                            "assets/images/logo_img/app_icons/icons8-rollback-50.png",
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Text(
                            "Hareketlerin",
                            style: GoogleFonts.ubuntu(
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    margin: EdgeInsets.only(left: 15, right: 15, top: 5),
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 25,
                          height: 25,
                          child: Image.asset(
                            "assets/images/logo_img/app_icons/icons8-qr-code-50.png",
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Text(
                            "QR Kodu",
                            style: GoogleFonts.ubuntu(
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    margin: EdgeInsets.only(left: 15, right: 15, top: 5),
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 25,
                          height: 25,
                          child: Image.asset(
                            "assets/images/logo_img/app_icons/instagram-save.png",
                          ),
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Expanded(
                          child: Text(
                            "Kaydedilenler",
                            style: GoogleFonts.ubuntu(
                              textStyle: TextStyle(
                                color: Colors.black,
                                fontSize: 17,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        });
  }

  void _onBottomShetMenuAccountSelect() {
    showModalBottomSheet(
        backgroundColor: Colors.transparent,
        elevation: 0,
        context: context,
        builder: (context) {
          return Container(
            width: double.infinity,
            height: 200,
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
                  width: 60,
                  height: 5,
                  margin: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.black54,
                    borderRadius: BorderRadius.all(
                      Radius.circular(4),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: double.infinity,
                  child: ListTile(
                    leading: ClipOval(
                      child: Container(
                        child: CachedNetworkImage(
                          imageUrl:
                              "https://listelist.com/wp-content/uploads/2019/02/thispersondoesnotexist.jpg",
                          progressIndicatorBuilder:
                              (context, url, downloadProgress) =>
                                  CircularProgressIndicator(
                                      value: downloadProgress.progress),
                          errorWidget: (context, url, error) =>
                              Icon(Icons.error),
                        ),
                      ),
                    ),
                    title: Text(
                      "bengü_demiroğ",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.circle_outlined,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  width: double.infinity,
                  child: ListTile(
                    leading: ClipOval(
                      child: Container(
                        width: 55,
                        height: 60,
                        color: Colors.grey,
                        child: Center(
                          child: ClipOval(
                            child: Container(
                              width: 54,
                              height: 53,
                              color: Colors.white,
                              child: Center(
                                child: IconButton(
                                  icon: Icon(
                                    Icons.add,
                                    color: Colors.black,
                                    size: 28,
                                  ),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    title: Text(
                      "Hesap Ekle",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    trailing: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.circle_outlined,
                        color: Colors.grey,
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
