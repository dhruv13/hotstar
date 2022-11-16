import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hotstar/phota.dart';
import 'package:hotstar/splash.dart';

import 'second.dart';

void main()
{
  runApp(MaterialApp(home: splash(),
    theme: ThemeData(scaffoldBackgroundColor: Colors.black),
    debugShowCheckedModeBanner: false,
  ));
}

class hotstar extends StatefulWidget {
  const hotstar({Key? key}) : super(key: key);
  // const HomeView({Key? key}) : super(key: key);


  @override
  State<hotstar> createState() => _hotstarState();
}

class _hotstarState extends State<hotstar> {

  int get index=> 0;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.black,
      drawer: Drawer (
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                  color: Colors.white),
              child: Text("Account",style: TextStyle(fontSize: 25,color: Colors.black)),
            ),
            ListTile(
              leading: Icon(Icons.home,
                color: Colors.black,
              ),
              title: Text("Home", style: TextStyle(color: Colors.black)),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.download,
                color: Colors.black,
              ),
              title: Text("Download", style: TextStyle(color: Colors.black)),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.watch_later_outlined,
                color: Colors.black,
              ),
              title: Text("Watchlist", style: TextStyle(color: Colors.black)),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.card_giftcard,
                color: Colors.black,
              ),
              title: Text("Prizes", style: TextStyle(color: Colors.black)),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.folder_special,
                color: Colors.black,
              ),
              title: Text("Channels", style: TextStyle(color: Colors.black)),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.language,
                color: Colors.black,
              ),
              title: Text("Languages", style: TextStyle(color: Colors.black)),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.category,
                color: Colors.black,
              ),
              title: Text("Genres", style: TextStyle(color: Colors.black)),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.settings,
                color: Colors.black,
              ),
              title: Text("Setting", style: TextStyle(color: Colors.black)),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.help,
                color: Colors.black,
              ),
              title: Text("Help", style: TextStyle(color: Colors.black)),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.info,
                color: Colors.black,
              ),
              title: Text("About Us", style: TextStyle(color: Colors.black)),
              onTap: (){},
            ),
            // Divider(height: 2,color: Colors.white),
          ],
        ),
      ),
      appBar: AppBar(title: Text("Disney+ Hotstar"),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: ListView(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  height: 180,
                  width: 350,
                  margin: EdgeInsets.only(top: 10,right: 5,left: 5),
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("${model().fota[index]}"),
                        fit: BoxFit.fill ),
                    border: Border.all(color: Colors.black),
                    borderRadius: BorderRadius.circular(15),
                  ),
                );
              },
              itemCount: 5,
            ),
          ),
          Column(
            children: [
              Container(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 120,
                      margin: EdgeInsets.only(top: 10,right: 10,left: 10),
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(model().latest[index]),
                            fit: BoxFit.fill),
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    );
                  },
                  itemCount: model().latest.length,
                ),
              ),
              Padding(padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Latest & Trending",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),textAlign: TextAlign.justify,),
                    TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return second(model().name,model().latest,index);
                      },));
                    }, child: Icon(Icons.arrow_forward_ios,color: Colors.white,)),
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                height: 125,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 200,
                      margin: EdgeInsets.only(top: 10,right: 10,left: 10),
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("${model().best[index]}"),
                            fit: BoxFit.fill),
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    );
                  },
                  itemCount: model().best.length,
                ),
              ),
              Padding(padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Best in Sport",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),textAlign: TextAlign.justify,),
                    TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return second(model().name,model().best,index);
                      },));
                    }, child: Icon(Icons.arrow_forward_ios,color: Colors.white,)),
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 120,
                      margin: EdgeInsets.only(top: 10,right: 10,left: 10),
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("${model().ps[index]}"),
                            fit: BoxFit.fill),
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    );
                  },
                  itemCount: model().ps.length,
                ),
              ),
              Padding(padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Popular Shows",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),textAlign: TextAlign.justify,),
                    TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return second(model().name,model().ps,index);
                      },));
                    }, child: Icon(Icons.arrow_forward_ios,color: Colors.white,)),
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 120,
                      margin: EdgeInsets.only(top: 10,right: 10,left: 10),
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("${model().sr[index]}"),
                            fit: BoxFit.fill),
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    );
                  },
                  itemCount: model().sr.length,
                ),
              ),
              Padding(padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Show Recommended For You",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),textAlign: TextAlign.justify,),
                    TextButton(onPressed: () {
                      // Navigator.push(context, MaterialPageRoute(builder: (context) {
                      //   return second(model().name,model().best,index);
                      // },));
                    }, child: Icon(Icons.arrow_forward_ios,color: Colors.white,)),
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 120,
                      margin: EdgeInsets.only(top: 10,right: 10,left: 10),
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("${model().mr[index]}"),
                            fit: BoxFit.fill),
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    );
                  },
                  itemCount: model().mr.length,
                ),
              ),
              Padding(padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Movie Recommended For You",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),textAlign: TextAlign.justify,),
                    TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return second(model().name,model().mr,index);
                      },));
                    }, child: Icon(Icons.arrow_forward_ios,color: Colors.white,)),
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                height: 125,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 200,
                      margin: EdgeInsets.only(top: 10,right: 10,left: 10),
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("${model().mm[index]}"),
                            fit: BoxFit.fill),
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    );
                  },
                  itemCount: model().mm.length,
                ),
              ),
              Padding(padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Multiplex Movies",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),textAlign: TextAlign.justify,),
                    TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return second(model().name,model().mm,index);
                      },));
                    }, child: Icon(Icons.arrow_forward_ios,color: Colors.white,)),
                  ],
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                height: 125,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Container(
                      width: 200,
                      margin: EdgeInsets.only(top: 10,right: 10,left: 10),
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage("${model().pm[index]}"),
                            fit: BoxFit.fill),
                        border: Border.all(color: Colors.black),
                        borderRadius: BorderRadius.circular(15),
                      ),
                    );
                  },
                  itemCount: model().pm.length,
                ),
              ),
              Padding(padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Popular Movies",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),textAlign: TextAlign.justify,),
                    TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) {
                        return second(model().name,model().pm,index);
                      },
                      ));
                    }, child: Icon(Icons.arrow_forward_ios,color: Colors.white,)
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

}