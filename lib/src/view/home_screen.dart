import 'package:flutter/material.dart';

import '../controller/home_controller.dart';
import '../style/themeData.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: HomeController().getUsers(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Scaffold(
              floatingActionButton: FloatingActionButton(
                backgroundColor: secundaryColor,
                onPressed: () => HomeController().clickOpenContacts(context),
                child: const Icon(
                  Icons.message_rounded,
                ),
              ),
              backgroundColor: bg,
              body: ListView.separated(
                scrollDirection: Axis.vertical,
                itemCount: snapshot.data!.length,
                separatorBuilder: (context, index) => const Divider(),
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: HomeController(index: index).pressContact,
                    leading: CircleAvatar(
                      backgroundColor: fc,
                      child: Image.network(snapshot.data![index].image),
                    ),
                    title: Text(
                      "${snapshot.data![index].firstName} ${snapshot.data![index].lastName}",
                      style: const TextStyle(color: Colors.white),
                    ),
                    subtitle: Text(
                      "${snapshot.data![index].firstName}: mensagem teste",
                      style: fontColor,
                    ),
                    trailing: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "13:34",
                          style: TextStyle(color: secundaryColor),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Transform.scale(
                          scale: 1.2,
                          child: Badge.count(
                            backgroundColor: secundaryColor,
                            count: index,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        });
  }
}
