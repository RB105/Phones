
import 'package:flutter/material.dart';
import 'package:phones/data/model/phones_model.dart';

class PhonesBuilder extends StatelessWidget {
  final List<PhonesModel> data;
  const PhonesBuilder({super.key,required this.data});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), itemBuilder: (context, index) {
      return Container();
    },);
  }
}