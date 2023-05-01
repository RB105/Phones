import 'package:flutter/material.dart';
import 'package:phones/core/constants/phones_urls.dart';
import 'package:phones/core/widgets/phones_builder.dart';
import 'package:phones/data/model/phones_model.dart';
import 'package:phones/data/service/phones_sevice.dart';

class XiaomiWidget extends StatelessWidget {
  const XiaomiWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: PhonesService.getPhones(url: PhoneUrls.xiaomiUrl),
      builder: (BuildContext context,AsyncSnapshot snapshot) {
      if (!snapshot.hasData) {
        return const Center(child: CircularProgressIndicator(),);
      }else if(snapshot.hasError){
        return Center(child: Text(snapshot.error.toString()),);
      } else {
        List<PhonesModel> data  = snapshot.data as List<PhonesModel>;
        return PhonesBuilder(data: data);
      }
    },);
  }
}