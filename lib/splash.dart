import 'package:flutter/material.dart';
import 'package:hotstar/main.dart';
import 'package:permission_handler/permission_handler.dart';

class splash extends StatefulWidget {
  const splash({Key? key}) : super(key: key);

  @override
  State<splash> createState() => _splashState();
}

class _splashState extends State<splash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text("Disney+ Hotstar....",style: TextStyle(fontSize: 40,color: Colors.blue),),),

    );
  }

  @override
  void initState()
  {
    super.initState();
    next();
  }
  next() async {

    var status = await Permission.storage.status;
    if (status.isDenied) {

      Map<Permission, PermissionStatus> statuses = await [
        Permission.storage,
      ].request();
    }
    await  Future.delayed(Duration(seconds: 3));
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) {
      return hotstar();
    },));
  }
}
