import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:ui_est/data/data.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          floating: true,
          pinned: true,
          leading: IconButton(
            icon: const Icon(FluentIcons.line_horizontal_3_20_regular),
            onPressed: () {},
          ),
          title: const ListTile(
            contentPadding: EdgeInsets.zero,
            title: Text(
              "PRINCIPAL'S DESK",
              style: TextStyle(color: Colors.grey, fontSize: 14),
            ),
            subtitle: Text("Eloit Academy, New Delhi",
                style: TextStyle(color: Colors.black, fontSize: 17)),
          ),
          actions: const [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://images.unsplash.com/photo-1673833257045-bd91f5e84fae?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80'),
            ),
            SizedBox(
              width: 20,
            )
          ],
        ),
        const SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20),
            child: Text("My Udpates"),
          ),
        ),
        SliverGrid(
          delegate: SliverChildBuilderDelegate((context, index) {
            return Column(
              children: [
                Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.blue,
                    ),
                    child: SizedBox(
                      height: 60,
                      width: 60,
                      child: myUpdates[index]['icon'],
                    )),
                Text(myUpdates[index]['title'])
              ],
            );
          }, childCount: myUpdates.length),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3),
        ),
        const SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 20),
            child: Text("My Udpates"),
          ),
        ),
        SliverGrid(
          delegate: SliverChildBuilderDelegate((context, index) {
            return Column(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue,
                        ),
                        child: SizedBox(
                          height: 60,
                          width: 60,
                          child: myUpdates[index]['icon'],
                        )),
                    Text(myUpdates[index]['title'])
                  ],
                );
                
          },
            childCount: myUpdates.length),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3),
        ),
        const SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 10),
            child: Text("My Udpates"),
          ),
        ),
        SliverGrid(
          delegate: SliverChildBuilderDelegate((context, index) {
            return Column(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.blue,
                        ),
                        child: SizedBox(
                          height: 60,
                          width: 60,
                          child: myUpdates[index]['icon'],
                        )),
                    Text(myUpdates[index]['title'])
                  ],
                );
                
          },
            childCount: myUpdates.length),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3),
        )
        // SliverList(
        //     delegate: SliverChildListDelegate([
        //   GridView.builder(
        //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //         crossAxisCount: 3),
        //     itemBuilder: (context, index) {
        //       return Column();
        //     },
        //     itemCount: myUpdates.length,
        //   )
        // ]))
      ],
    );
  }
}
