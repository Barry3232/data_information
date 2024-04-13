import 'package:flutter/material.dart';

import 'datascreen.dart';
import 'infodata.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        primaryColor: Colors.purple,
        useMaterial3: true,
      ),
      home: const InformationCatalogScreen(),
    );
  }
}


class InformationCatalogScreen extends StatelessWidget{
  const InformationCatalogScreen({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: ListView.builder(
        itemCount: infoList.length,
        itemBuilder: (context, index){
            return catalogCard(infoList[index], context);
        },
      ),
    );
  }


  Widget catalogCard(Map<String, String> infodata, BuildContext inputContext){
    return  InkWell(
      onTap: (){
        Navigator.of(inputContext).push(MaterialPageRoute(builder: (context){
          return DataScreen(
            address: infodata['address']??"no address",
            nin: infodata['nin']??"no nin",
            name: infodata['name']??"no name",
          );
        }));
      },
      child: Card(
        elevation: 3,
        child: ListTile(
          leading: Text(infodata['name']??"sss"),
          title: Text(infodata['address']??"ddd"),
          subtitle: Text(infodata['nin']??"fff"),
        ),
      ),
    );
  }
}

