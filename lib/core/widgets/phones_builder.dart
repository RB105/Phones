import 'package:flutter/material.dart';
import 'package:phones/core/extensions/build_context_extension.dart';
import 'package:phones/data/model/phones_model.dart';
import 'package:phones/view/info_page.dart';

class PhonesBuilder extends StatelessWidget {
  final List<PhonesModel> data;
  const PhonesBuilder({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: data.length,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => InfoPage(data: data[index],heroTag: index.toString()),));
            },
            child: Container(
              width: context.width * 0.4,
              height: context.height * 0.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                children: [
                  Expanded(
                    flex: 9,
                    child: Hero(
                      tag: index.toString(),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            image: DecorationImage(
                                image: NetworkImage(data[index].image.toString()),
                                fit: BoxFit.fill)),
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 2,
                      child: ListTile(
                        title: Text(
                          data[index].name.toString(),
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                        trailing: Text(
                          data[index].howMuch.toString(),
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ))
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
