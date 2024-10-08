import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State createState() => _MyApp();
}

class _MyApp extends State {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text("NETFLIX",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.red)),
            centerTitle: true,
            backgroundColor: Colors.black,
            shape:
                const Border(bottom: BorderSide(width: 1, color: Colors.grey)),
          ),
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            physics: const BouncingScrollPhysics(),
            child: Column(
              children: [
                ListView.builder(
                
                    //physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 1,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        color: Colors.black,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 30,
                            ),
                            const Row(
                              children: [
                                SizedBox(
                                  width: 30,
                                ),
                                Text("HollyWood Movies",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                              ],
                            ),
                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              padding: const EdgeInsets.all(0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  // const SizedBox(
                                  //   width: 30,
                                  // ),
                                  Container(
                                    height: 300,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Colors.red,
                                        image: const DecorationImage(
                                          image: NetworkImage(
                                              "https://i.redd.it/wmcj8ml7wqh01.jpg"),
                                          fit: BoxFit.cover,
                                        )),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    height: 300,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Colors.red,
                                        image: const DecorationImage(
                                          image: NetworkImage(
                                              "https://i.mydramalist.com/zBrkKP_2f.png"),
                                          fit: BoxFit.cover,
                                        )),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    height: 300,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Colors.red,
                                        image: const DecorationImage(
                                          image: NetworkImage(
                                              "https://64.media.tumblr.com/eacd7bc6999b55477cf2dc9f20c318e6/abcb2dee99d386d3-81/s2048x3072/f97d62eb3a4aad1547b25f28b20286c165896a0a.jpg"),
                                          fit: BoxFit.cover,
                                        )),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    height: 300,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Colors.red,
                                        image: const DecorationImage(
                                          image: NetworkImage(
                                              "https://sportshub.cbsistatic.com/i/2023/07/18/e9c2a933-6d3d-4516-9dd1-7b5245504643/heart-of-stone-poster-netflix.jpg?auto=webp&width=540&height=800&crop=0.675:1,smart"),
                                          fit: BoxFit.cover,
                                        )),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),

                                  Container(
                                    height: 300,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Colors.red,
                                        image: const DecorationImage(
                                          image: NetworkImage(
                                              "https://rukminim2.flixcart.com/image/850/1000/kyvvtzk0/poster/c/l/m/medium-dark-netflix-series-matte-finish-poster-urbanprint6202-original-imagbygdx3u6pvfg.jpeg?q=90&crop=false"),
                                          fit: BoxFit.cover,
                                        )),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    height: 300,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Colors.red,
                                        image: const DecorationImage(
                                          image: NetworkImage(
                                              "https://www.tallengestore.com/cdn/shop/products/PrisonBreak-NetflixTVShowPoster_9b7b8143-372b-419f-8312-84a7cbe07cfd.jpg?v=1589271916"),
                                          fit: BoxFit.cover,
                                        )),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    height: 300,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Colors.red,
                                        image: const DecorationImage(
                                          image: NetworkImage(
                                              "https://pixeldemonmg.co.uk/cdn/shop/files/bright-movie-poster.jpg?v=1726180608&width=640"),
                                          fit: BoxFit.cover,
                                        )),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    height: 300,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: Colors.red,
                                        image: const DecorationImage(
                                          image: NetworkImage(
                                              "https://mir-s3-cdn-cf.behance.net/project_modules/hd/a7d036106920627.5f9adf8d19d5c.jpg"),
                                          fit: BoxFit.cover,
                                        )),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        //Column(),
                      );
                    }),
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: 1,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        color: Colors.black,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 30,
                            ),
                            const Row(
                              children: [
                                SizedBox(
                                  width: 30,
                                ),
                                Text("BollyWood Movies",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                              ],
                            ),
                            SingleChildScrollView(
                              padding: const EdgeInsets.all(25),
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 300,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        image: const DecorationImage(
                                          image: NetworkImage(
                                              "https://filmfare.wwmindia.com/content/2019/apr/indian-web-series-sacred-games-11555420126.jpg"),
                                          fit: BoxFit.cover,
                                        )),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    height: 300,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        image: const DecorationImage(
                                          image: NetworkImage(
                                              "https://m.media-amazon.com/images/M/MV5BNmExODZkZGYtMTY3OC00MTNkLWIwNmYtNTU0M2EyYjZkZmU5XkEyXkFqcGc@._V1_.jpg"),
                                          fit: BoxFit.cover,
                                        )),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    height: 300,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        image: const DecorationImage(
                                          image: NetworkImage(
                                              "https://stat5.bollywoodhungama.in/wp-content/uploads/2021/07/Mimi-8-255x335.jpg"),
                                          fit: BoxFit.cover,
                                        )),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    height: 300,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        image: const DecorationImage(
                                          image: NetworkImage(
                                              "https://i0.wp.com/mir-s3-cdn-cf.behance.net/project_modules/1400/d873f428480881.55c227de15ce8.jpg?resize=416%2C624&ssl=1"),
                                          fit: BoxFit.cover,
                                        )),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    height: 300,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        image: const DecorationImage(
                                          image: NetworkImage(
                                              "https://static0.srcdn.com/wordpress/wp-content/uploads/2024/07/pagglait-2021.jpg"),
                                          fit: BoxFit.cover,
                                        )),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    height: 300,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        image: const DecorationImage(
                                          image: NetworkImage(
                                              "https://filmfare.wwmindia.com/content/2019/apr/indian-web-series-sacred-games-11555420126.jpg"),
                                          fit: BoxFit.cover,
                                        )),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    height: 300,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        image: const DecorationImage(
                                          image: NetworkImage(
                                              "https://filmfare.wwmindia.com/content/2019/apr/indian-web-series-sacred-games-11555420126.jpg"),
                                          fit: BoxFit.cover,
                                        )),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    height: 300,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        image: const DecorationImage(
                                          image: NetworkImage(
                                              "https://filmfare.wwmindia.com/content/2019/apr/indian-web-series-sacred-games-11555420126.jpg"),
                                          fit: BoxFit.cover,
                                        )),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        //Column(),
                      );
                    }),
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: 1,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        color: Colors.black,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 30,
                            ),
                            const Row(
                              children: [
                                SizedBox(
                                  width: 30,
                                ),
                                Text("Romantic Movies",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                              ],
                            ),
                            SingleChildScrollView(
                              padding: const EdgeInsets.all(25),
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 300,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        image: const DecorationImage(
                                            image: NetworkImage(
                                                "https://c8.alamy.com/comp/2E5MJ9B/emma-roberts-and-luke-bracey-in-holidate-2020-directed-by-john-whitesell-credit-netflix-album-2E5MJ9B.jpg"),
                                            fit: BoxFit.cover)),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    height: 300,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        image: const DecorationImage(
                                            image: NetworkImage(
                                                "https://pbs.twimg.com/media/EAngr3vUwAATlCn.jpg"),
                                            fit: BoxFit.cover)),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    height: 300,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        image: const DecorationImage(
                                            image: NetworkImage(
                                                "https://hips.hearstapps.com/hmg-prod/images/wedding-season-2022-1670279053.png"),
                                            fit: BoxFit.cover)),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    height: 300,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        image: const DecorationImage(
                                            image: NetworkImage(
                                                "https://static0.colliderimages.com/wordpress/wp-content/uploads/2023/08/happiness-for-beginners-netflix-poster.jpg"),
                                            fit: BoxFit.cover)),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    height: 300,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        image: const DecorationImage(
                                            image: NetworkImage(
                                                "https://images.squarespace-cdn.com/content/v1/6249b3b8d253354ab02eb7c6/1649704440962-WJ56H3CZBEMQ5SRG3OGN/IMG_7668.jpeg"),
                                            fit: BoxFit.cover)),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    height: 300,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        image: const DecorationImage(
                                            image: NetworkImage(
                                                "https://static0.colliderimages.com/wordpress/wp-content/uploads/2023/08/the-half-of-it-netflix-poster.jpg"),
                                            fit: BoxFit.cover)),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    height: 300,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        image: const DecorationImage(
                                            image: NetworkImage(
                                                "https://m.media-amazon.com/images/M/MV5BMTg5N2U4ZTItMjc2NC00NDg2LWIzODYtOWZmNzY5Yzc5MzUxXkEyXkFqcGc@._V1_.jpg"),
                                            fit: BoxFit.cover)),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    height: 300,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        image: const DecorationImage(
                                            image: NetworkImage(
                                                "https://static1.colliderimages.com/wordpress/wp-content/uploads/2020/11/dash-and-lily-poster.jpg"),
                                            fit: BoxFit.cover)),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        //Column(),
                      );
                    }),
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: 1,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        color: Colors.black,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 30,
                            ),
                            const Row(
                              children: [
                                SizedBox(
                                  width: 30,
                                ),
                                Text("TollyWood Movies",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                              ],
                            ),
                            SingleChildScrollView(
                              padding: const EdgeInsets.all(25),
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 300,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        image: const DecorationImage(
                                            image: NetworkImage(
                                                "https://static.digit.in/OTT/v2/images/18-pages-514205.jpg"),
                                            fit: BoxFit.cover)),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    height: 300,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        image: const DecorationImage(
                                            image: NetworkImage(
                                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLGS78KIhJPcvkubmbgljfAb_vjQ0RS5FpGw&s"),
                                            fit: BoxFit.cover)),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    height: 300,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        image: const DecorationImage(
                                            image: NetworkImage(
                                                "https://m.media-amazon.com/images/M/MV5BYjVjNTY5ODEtMzIzYy00YjNiLWEwNDktMmVhNzMzNDgyNWU0XkEyXkFqcGc@._V1_.jpg"),
                                            fit: BoxFit.cover)),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    height: 300,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        image: const DecorationImage(
                                            image: NetworkImage(
                                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQK6gHUc4tRdzUUp638HR_dOvZLVJxxsHOuAQ&s"),
                                            fit: BoxFit.cover)),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    height: 300,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        image: const DecorationImage(
                                            image: NetworkImage(
                                                "https://images.indianexpress.com/2023/09/leo3.jpg"),
                                            fit: BoxFit.cover)),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    height: 300,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        image: const DecorationImage(
                                            image: NetworkImage(
                                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJUioSSTUkfDcHy1Ggbt6ZDhUrg-ZgBQU8uw&s"),
                                            fit: BoxFit.cover)),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    height: 300,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        image: const DecorationImage(
                                            image: NetworkImage(
                                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQsuIOB8zFGoBv1LacFo-RsL0wmLtFdZIcNIaMvYnnrFIrBvgLTUKRdSG-9uLwMlZk_fic&usqp=CAU"),
                                            fit: BoxFit.cover)),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    height: 300,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        image: const DecorationImage(
                                            image: NetworkImage(
                                                "https://pbs.twimg.com/media/GUCf-jAW4AAd9SL.jpg"),
                                            fit: BoxFit.cover)),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        //Column(),
                      );
                    }),
                ListView.builder(
                    shrinkWrap: true,
                    itemCount: 1,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        color: Colors.black,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(
                              height: 30,
                            ),
                            const Row(
                              children: [
                                SizedBox(
                                  width: 30,
                                ),
                                Text("Dramas",
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white)),
                              ],
                            ),
                            SingleChildScrollView(
                              padding: const EdgeInsets.all(25),
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 300,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        image: const DecorationImage(
                                            image: NetworkImage(
                                                "https://rukminim2.flixcart.com/image/850/1000/kri3xjk0/poster/1/n/0/large-start-up-poster-start-up-print-startup-print-startup-original-imag5a7ecghhvy2q.jpeg?q=90&crop=false"),
                                            fit: BoxFit.cover)),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    height: 300,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        image: const DecorationImage(
                                            image: NetworkImage(
                                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSO62Jkv-dY5Eyv0Buq4BHb5bTW_Kp8wG80tw&s"),
                                            fit: BoxFit.cover)),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    height: 300,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        image: const DecorationImage(
                                            image: NetworkImage(
                                                "https://blog.asianwiki.com/wp-content/uploads/2022/11/The_Fabulous-p1.jpeg"),
                                            fit: BoxFit.cover)),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    height: 300,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        image: const DecorationImage(
                                            image: NetworkImage(
                                                "https://blog.asianwiki.com/wp-content/uploads/2023/05/Celebrity-mp1.jpeg"),
                                            fit: BoxFit.cover)),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    height: 300,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        image: const DecorationImage(
                                            image: NetworkImage(
                                                "https://i.mydramalist.com/73XWZR_2f.png"),
                                            fit: BoxFit.cover)),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    height: 300,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        image: const DecorationImage(
                                            image: NetworkImage(
                                                "https://m.media-amazon.com/images/M/MV5BNTliODMyYzEtZjU3Yy00NWZmLTlkYWYtZmEzOGM0MTg5ODFlXkEyXkFqcGc@._V1_.jpg"),
                                            fit: BoxFit.cover)),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    height: 300,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        image: const DecorationImage(
                                            image: NetworkImage(
                                                "https://static0.colliderimages.com/wordpress/wp-content/uploads/2023/09/everything-now-netflix-poster.jpg"),
                                            fit: BoxFit.cover)),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                  Container(
                                    height: 300,
                                    width: 200,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        image: const DecorationImage(
                                            image: NetworkImage(
                                                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQne-Zx4gxU-MYmQVrvvIp4x_elgVSoLILGQ&s"),
                                            fit: BoxFit.cover)),
                                  ),
                                  const SizedBox(
                                    width: 20,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        //Column(),
                      );
                    }),
              ],
            ),
          )),
    );
  }
}
