import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/di/injection.dart';
import '../../bloc/home_bloc.dart';
import '../../data/models/home_list_model.dart';
import '../../data/models/home_model.dart';
import '../../data/repositories/home_repository.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text("Clean Architecture App"),
      ),
      body: BlocBuilder<HomeBloc, HomeState>(
        buildWhen: (previous, current) =>
            current is HomeLoading ||
            current is HomeError ||
            current is HomeLoaded,
        builder: (context, state) {
          if (state is HomeLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is HomeError) {
            return Center(
              child: Text(state.errorMessage),
            );
          } else if (state is HomeLoaded) {
            return ListView.builder(
              itemCount: state.homePaginationModel.subHomePaginationModel
                  .subHomeModelList.length,
              itemBuilder: (context, index) {
                return Container(
                  height: 50,
                  width: 50,
                  margin: const EdgeInsets.all(10),
                  color: Colors.red,
                );
              },
            );
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final HomeModel homeModel = await getIt<HomeRepository>().getHome();
          debugPrint('Status: ${homeModel.status}');
          debugPrint('Message: ${homeModel.message}');
          debugPrint('Home Entity: ${homeModel.homeModel}');
          debugPrint(
              '----------------------------------------------------------------------');
          final HomeListModel homeListModel =
              await getIt<HomeRepository>().getHomeList();
          debugPrint('Status: ${homeListModel.status}');
          debugPrint('Message: ${homeListModel.message}');
          debugPrint('Home List Entity: ${homeListModel.homeModelList}');
          debugPrint(
              '----------------------------------------------------------------------');
        },
        child: const Text("Get Data"),
      ),
    );
  }
}
