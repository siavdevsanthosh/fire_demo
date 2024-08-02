import 'package:flutter/material.dart';

class Todolist extends StatelessWidget {
  const Todolist({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'todo list',
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(color: Colors.amber),
          ), //text
          Text(
            'complete it as soon  as possible',
            style: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(color: Colors.amber),
          ), //text
          const Divider(),
          Expanded(
              child: ListView.separated(
                  itemBuilder: (BuildContext, int index) {
                    return const ListTile(
                        leading: CircleAvatar(backgroundColor: Colors.black),
                        title: Text('username') //circleavatar
                        );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const Divider();
                  },
                  itemCount: 40)) //listview.separated//Expand
        ],
      ),
    ));
  }
}
