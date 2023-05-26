import 'package:flutter/material.dart';
import 'package:zapzap/src/controller/status_controller.dart';
import 'package:zapzap/src/style/themeData.dart';

class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: StatusController().getUsers(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Scaffold(
              floatingActionButton: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  FloatingActionButton.small(
                    backgroundColor: Colors.blueGrey[900],
                    onPressed: () {},
                    child: const Icon(Icons.edit_rounded),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  FloatingActionButton(
                    backgroundColor: secundaryColor,
                    onPressed: () {},
                    child: const Icon(Icons.camera_alt_rounded),
                  ),
                ],
              ),
              backgroundColor: bg,
              body: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  ListTile(
                    leading: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        CircleAvatar(
                          backgroundColor: primaryColor,
                          child: const Icon(Icons.person),
                        ),
                        Positioned(
                          right: -5,
                          bottom: -2,
                          child: Container(
                            width: 20,
                            height: 20,
                            decoration: BoxDecoration(
                                color: secundaryColor,
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                  color: bg,
                                  width: 3,
                                )),
                            child: const Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 10,
                            ),
                          ),
                        )
                      ],
                    ),
                    title: const Text(
                      "My status",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    subtitle: Text(
                      "Tap to add status update",
                      style: TextStyle(
                        color: fc,
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      "Recent updates",
                      style: TextStyle(
                        color: fc,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: snapshot.data!.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(
                            "${snapshot.data![index].firstName} ${snapshot.data![index].lastName}",
                            style: const TextStyle(
                              color: Colors.white,
                            ),
                          ),
                          leading: Container(
                            padding: const EdgeInsets.all(1.5),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: secundaryColor,
                            ),
                            child: CircleAvatar(
                              backgroundColor: primaryColor,
                              child: Image.network(snapshot.data![index].image),
                            ),
                          ),
                          subtitle: Text(
                            "Today, 08:33",
                            style: TextStyle(
                              color: fc,
                            ),
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        });
  }
}
