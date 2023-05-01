import 'package:flutter/material.dart';
import 'package:phones/data/model/phones_model.dart';

class InfoPage extends StatelessWidget {
  final String heroTag;
  final PhonesModel data;
  const InfoPage({super.key, required this.data, required this.heroTag});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.attach_money))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(
              flex: 4,
              child: Hero(
                  tag: heroTag,
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        image: DecorationImage(
                            image: NetworkImage(data.image.toString()))),
                  ))),
          Expanded(
              child: Column(
                
            children: [
              Text(data.name.toString()),
              Text(data.howMuch.toString()),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [Text(data.color.toString()),Text(data.memory.toString())],)
            ],
          ))
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Row(children: [Expanded(child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: ElevatedButton(onPressed: (){},style: ElevatedButton.styleFrom(
          shape: const StadiumBorder()
        ),child: const Text("Add to cart"),),
      ))],),
    );
  }
}
