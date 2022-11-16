import 'package:flutter/material.dart';
import 'package:hotstar/phota.dart';

class second extends StatefulWidget {
  int index;
  List<String> name;
  List<String> latest;
  second(this.name, this.latest,this.index);

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text("${widget.name[widget.index]}",),
        backgroundColor: Colors.black,
        actions: [
          IconButton(onPressed: () {

          }, icon: Icon(Icons.search))
        ],
      ),

      body: Column(
        children: [
          Container(
            child: GridView.builder(
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return GridTile(
                  child: Container(
                    width: 50,
                    height: 400,
                    margin: EdgeInsets.only(top: 10, right: 10, left: 10),
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      image: DecorationImage(image: AssetImage(model().latest[index]),
                          fit: BoxFit.fill),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                );
              },
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1,
                  crossAxisCount: 2,
                  mainAxisSpacing: 10),
              itemCount: model().latest.length,
            ),
          ),
        ],
      ),
    );
  }
}
