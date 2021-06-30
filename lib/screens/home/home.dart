import 'package:flutter/material.dart';
import 'package:flutter_template_project/helpers/style.dart';
import 'package:flutter_template_project/screens/login/login.dart';
import 'package:flutter_template_project/widgets/custom_text.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({ Key key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
              length: 3,

      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
          title: CustomText(text: "Demo App",),
               bottom: TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car, color: Colors.black,)),
                Tab(icon: Icon(Icons.directions_transit, color: Colors.black,)),
                Tab(icon: Icon(Icons.directions_bike, color: Colors.black,)),
              ],
            ),
          ),
          drawer: Drawer(
            child: ListView(
              children: [
                UserAccountsDrawerHeader(accountName: CustomText(text: "Santos Enoque",), accountEmail: CustomText(text: "santosenoque.ss@gmail.com",)),
                ListTile(
                  leading: Icon(Icons.exit_to_app),
                  title: CustomText(text: "Log out",),
                  onTap: (){
                    Get.offAll(LoginScreen());
                  },
                )
              ],
            ),
          ),
        body: TabBarView(
            children: [
              Center(child: CustomText(text: "Screen one",),),
                           Center(child: CustomText(text: "Screen two",),),
              Center(child: CustomText(text: "Screen three",),),

            ],
          ),
      ),
    );
  }
}