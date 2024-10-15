import 'package:flutter/material.dart';
import 'package:shopp_app/Methods/scaffold_messenger.dart';
import 'package:shopp_app/Models/category.dart';
import 'package:shopp_app/constants.dart';

class FilteredNameListBuilder extends StatelessWidget {
  final List<Category> names;

  const FilteredNameListBuilder({super.key, required this.names});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 530,
      child: ListView.builder(
        itemCount: names.length,
        itemBuilder: (context, index) {
          return Card(
            elevation: 5,
            margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            color: Colors.white,
            child: ListTile(
              contentPadding: const EdgeInsets.all(16),
              leading: Image.asset(names[index].image),
              title: Text(
                names[index].title,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: kPrimaryColor,
                ),
              ),
              subtitle: Text(
                '${names[index].stock} in stock',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[600],
                ),
              ),
              onTap: () {
                scafMess(context, 'Tapped on ${names[index]}');
              },
            ),
          );
        },
      ),
    );
  }
}
