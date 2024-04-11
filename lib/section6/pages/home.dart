import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
    required this.faker,
    required this.tanggal,
  }) : super(key: key);

  final Faker faker;
  final String tanggal;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) => ListTile(
        leading: CircleAvatar(
          backgroundImage: NetworkImage(faker.image.image(
            width: 50,
            height: 50,
          )),
        ),
        title: Text(faker.person.name()),
        subtitle: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
                "${DateFormat.yMMMMd().add_Hms().add_jms().format(DateTime.parse(tanggal))}")
          ],
        ),
      ),
    );
  }
}
