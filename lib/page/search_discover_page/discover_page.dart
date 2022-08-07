import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:instagram_app/page/home/home_page.dart';
import 'package:instagram_app/page/search_discover_page/search_page.dart';
import 'package:instagram_app/page/user_page/user_page.dart';

class discoverPg extends StatefulWidget {
  const discoverPg({Key? key}) : super(key: key);

  @override
  State<discoverPg> createState() => _discoverPgState();
}

class _discoverPgState extends State<discoverPg> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height,
              color: Colors.white,
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    // AppBar start
                    _buildSearchUser,
                    // body start
                    _buildBodyPostList,
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

  Widget get _buildSearchUser => AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 65,
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => searchPg(),
                ),
              );
            },
            child: Container(
              width: MediaQuery.of(context).size.width,
              child: Container(
                width: MediaQuery.of(context).size.height,
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(4),
                  ),
                ),
                child: Row(
                  children: const <Widget>[
                    SizedBox(
                      width: 7,
                    ),
                    Icon(
                      Icons.search,
                      color: Colors.black45,
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Ara",
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      );

  Widget get _buildBodyPostList => Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        child: CustomScrollView(
          slivers: <Widget>[
            SliverToBoxAdapter(
              child: Container(
                width: double.infinity,
                height: 230,
                child: Row(
                  children: <Widget>[
                    Flexible(
                      fit: FlexFit.loose,
                      flex: 1,
                      child: Container(
                        width: 130,
                        height: 230,
                        child: Column(
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                width: 115,
                                height: 110,
                                margin: EdgeInsets.only(bottom: 3),
                                child: CachedNetworkImage(
                                  imageUrl:
                                      "https://cdn.pixabay.com/photo/2016/02/10/21/59/landscape-1192669__480.jpg",
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
                                width: 115,
                                height: 110,
                                margin: EdgeInsets.only(bottom: 3),
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
                          ],
                        ),
                      ),
                    ),
                    Flexible(
                      fit: FlexFit.loose,
                      flex: 1,
                      child: Container(
                        width: 120,
                        height: 230,
                        child: Column(
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {},
                              child: Container(
                                width: 115,
                                height: 110,
                                margin: EdgeInsets.only(bottom: 3),
                                child: CachedNetworkImage(
                                  imageUrl:
                                      "https://i.ytimg.com/vi/1n9_ICQXh4Y/sddefault.jpg",
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
                                width: 115,
                                height: 110,
                                margin: EdgeInsets.only(bottom: 3),
                                child: CachedNetworkImage(
                                  imageUrl:
                                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQIPvJ-Ey9dtmhYtuS2kzWnyi4OLaUfqJ7bkKswhFinh-Nj5WPn5Zf8bvoNVmx7mdXPA4Q&usqp=CAU",
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
                        ),
                      ),
                    ),
                    Flexible(
                      fit: FlexFit.loose,
                      flex: 1,
                      child: Container(
                        height: 235,
                        child: GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 115,
                            height: 110,
                            margin: EdgeInsets.only(bottom: 3),
                            child: CachedNetworkImage(
                              imageUrl:
                                  "https://i.pinimg.com/474x/66/aa/7e/66aa7e9725d61680cdd1b144183921d0.jpg",
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
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SliverGrid.count(
              crossAxisCount: 3,
              children: <Widget>[
                Container(
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.all(3),
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 115,
                      height: 110,
                      margin: EdgeInsets.only(bottom: 3),
                      child: CachedNetworkImage(
                        imageUrl:
                            "https://www.sozumoki.com/img/17000/16026/16026_p_6_1513836065_812.jpg",
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
                Container(
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.all(3),
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 115,
                      height: 110,
                      margin: EdgeInsets.only(bottom: 3),
                      child: CachedNetworkImage(
                        imageUrl:
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCZF4OtkzWV_QUXq6lNIhM4izQBiD32B2LvZR-dmyZaYwe3yG3O822Yw-RsAoIzLliDn0&usqp=CAU",
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
                Container(
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.all(3),
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 115,
                      height: 110,
                      margin: EdgeInsets.only(bottom: 3),
                      child: CachedNetworkImage(
                        imageUrl:
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEKBVoG2XwOms1Kh7rFdCpmNuK8TVyJkLWIg&usqp=CAU",
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
                Container(
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.all(3),
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 115,
                      height: 110,
                      margin: EdgeInsets.only(bottom: 3),
                      child: CachedNetworkImage(
                        imageUrl:
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQApJQWhjgtTsYNH5jDLKCKxDYXMbmBeZSN0w&usqp=CAU",
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
                Container(
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.all(3),
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 115,
                      height: 110,
                      margin: EdgeInsets.only(bottom: 3),
                      child: CachedNetworkImage(
                        imageUrl:
                            "https://img-s1.onedio.com/id-622a013ed8373c6a38669b4b/rev-0/w-620/f-jpg/s-11a51ac299277a57321103e701cdb6f02978f219.jpg",
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
                Container(
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.all(3),
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 115,
                      height: 110,
                      margin: EdgeInsets.only(bottom: 3),
                      child: CachedNetworkImage(
                        imageUrl:
                            "https://cdnuploads.aa.com.tr/uploads/Contents/2022/06/07/thumbs_b_c_dd2bbdb6b89f9f0ac224e2c353857048.jpg?v=123800",
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
                Container(
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.all(3),
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 115,
                      height: 110,
                      margin: EdgeInsets.only(bottom: 3),
                      child: CachedNetworkImage(
                        imageUrl:
                            "https://foto.haberler.com/galeri/2013/12/23/dunya-dan-muhtesem-doga-manzaralari_22770_b.jpg",
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
                Container(
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.all(3),
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 115,
                      height: 110,
                      margin: EdgeInsets.only(bottom: 3),
                      child: CachedNetworkImage(
                        imageUrl:
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS6Ddf1StKHZd-VKPlSR1kSh_JRz0frBBrb6ik10TUwB8Uu1FqQUp-3oUJbtKAtUKsz8OA&usqp=CAU",
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
                Container(
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.all(3),
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 115,
                      height: 110,
                      margin: EdgeInsets.only(bottom: 3),
                      child: CachedNetworkImage(
                        imageUrl:
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSsFmA6f0t-9iZcPd4czET08N-H-KT3rNcNt6cs2Un4S-fDlysJhwbNOBXNDpGSj9xCgHU&usqp=CAU",
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
                Container(
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.all(3),
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 115,
                      height: 110,
                      margin: EdgeInsets.only(bottom: 3),
                      child: CachedNetworkImage(
                        imageUrl:
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSdbILTVaf3HkqU7Jq9ZY1qd-6YuS5OVJkPmA&usqp=CAU",
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
                Container(
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.all(3),
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 115,
                      height: 110,
                      margin: EdgeInsets.only(bottom: 3),
                      child: CachedNetworkImage(
                        imageUrl:
                            "https://netresim.com/bilesenler/dosya/dosyalar/image/galeriler/15.12.2019/oresim/bolu-sik-agaclar-ve-gol-manzarasi-arka-plan.jpg",
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
                Container(
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.all(3),
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 115,
                      height: 110,
                      margin: EdgeInsets.only(bottom: 3),
                      child: CachedNetworkImage(
                        imageUrl:
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8JxRCYXWmYEMT9uMzfBQUhQWxibqw_3pYLGuIDvGMnvQsdtE5AdsId0ODt_Pe-52-sFA&usqp=CAU",
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
              ],
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 200,
              ),
            ),
          ],
        ),
      );
}
