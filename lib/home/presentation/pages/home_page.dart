import 'package:flutter/material.dart';

import '../../../core/di/injection.dart';
import '../../domain/entities/home.dart';
import '../../domain/entities/home_list.dart';
import '../../domain/entities/sub_home.dart';
import '../../domain/repositories/home_repository.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final HomeRepository _homeRepository = getIt<HomeRepository>();
  List<SubHomeEntity> homeEntityList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: homeEntityList.isNotEmpty
          ? ListView.builder(
              itemCount: homeEntityList.length,
              itemBuilder: (context, index) {
                final SubHomeEntity homeEntity = homeEntityList[index];
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'ID: ${homeEntity.id}',
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Title: ${homeEntity.title}',
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      'Description: ${homeEntity.description}',
                      style: const TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    const Text(
                      '------------------------------------------------------------------------------------------',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black,
                      ),
                    ),
                  ],
                );
              },
            )
          : const Center(
              child: Text(
                'Click on Floating Action Button',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                ),
              ),
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final HomeEntity homeEntity = await _homeRepository.getHome();
          debugPrint('Status: ${homeEntity.status}');
          debugPrint('Message: ${homeEntity.message}');
          debugPrint('Home Entity: ${homeEntity.homeEntity}');
          debugPrint(
              '----------------------------------------------------------------------');
          final HomeListEntity homeListEntity =
              await _homeRepository.getHomeList();
          debugPrint('Status: ${homeListEntity.status}');
          debugPrint('Message: ${homeListEntity.message}');
          debugPrint('Home List Entity: ${homeListEntity.homeEntityList}');
          debugPrint(
              '----------------------------------------------------------------------');
          final result = await _homeRepository.getHomePaginationList();
          result.fold((exception) {
            debugPrint('Exception: $exception');
          }, (data) {
            debugPrint('Status: ${data.status}');
            debugPrint('Message: ${data.message}');
            debugPrint(
                'Total Elements: ${data.subHomePagination.totalElements}');
            debugPrint('Total Pages: ${data.subHomePagination.totalPages}');
            debugPrint(
                'Home Entity list items: ${data.subHomePagination.homeItems}');
          });
          debugPrint(
              '----------------------------------------------------------------------');
          setState(() {
            homeEntityList = homeListEntity.homeEntityList;
          });
          // final AboutEntity aboutEntity = await _homeRepository.getAbout();
          // debugPrint('Status: ${aboutEntity.status}');
          // debugPrint('Message: ${aboutEntity.message}');
          // debugPrint('ID: ${aboutEntity.subAboutEntity.id}');
          // debugPrint('Text: ${aboutEntity.subAboutEntity.text}');
          // debugPrint(
          //     '----------------------------------------------------------------------');
        },
        child: const Text("Get Data"),
      ),
    );
  }
}
