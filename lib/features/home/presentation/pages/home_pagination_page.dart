import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../domain/entities/home_pagination/home_pagination_item.dart';
import '../bloc/home_bloc.dart';
import '../bloc/home_state.dart';

class HomePaginationPage extends StatefulWidget {
  const HomePaginationPage({super.key});

  @override
  State<HomePaginationPage> createState() => _HomePaginationPageState();
}

class _HomePaginationPageState extends State<HomePaginationPage> {
  late final ScrollController _controller;

  @override
  void initState() {
    _controller = ScrollController();
    _controller.addListener(() {
      context
          .read<HomeBloc>()
          .state
          .homePagination
          .checkPaginationInitialExtent(
            addEvent: () {
              debugPrint("Get More Data");
            },
            scrollController: _controller,
          );
    });
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state.isLoading && !state.isError && !state.isSuccess) {
            return const Center(
              child: CircularProgressIndicator(
                color: Colors.orange,
              ),
            );
          } else if (!state.isLoading && state.isError && !state.isSuccess) {
            return Center(
              child: Text(state.message),
            );
          } else if (!state.isLoading && !state.isError && state.isSuccess) {
            return ListView.builder(
              controller: _controller,
              itemCount: !state.homePagination.isFinished &&
                      state.homePagination.items.isNotEmpty
                  ? state.homePagination.items.length + 1
                  : state.homePagination.items.length,
              itemBuilder: (context, index) {
                if (index >= state.homePagination.items.length) {
                  return const Center(
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 12),
                      child: CircularProgressIndicator(
                        color: Colors.orange,
                      ),
                    ),
                  );
                }
                final HomePaginationItem homePaginationItem =
                    state.homePagination.items[index];
                return Container(
                  margin:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  decoration: BoxDecoration(
                    color: Colors.teal,
                    borderRadius: BorderRadius.circular(14),
                  ),
                  child: Column(
                    children: [
                      Text(
                        "ID: ${homePaginationItem.id}",
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Title: ${homePaginationItem.title}",
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Description: ${homePaginationItem.description}",
                        style: const TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                );
              },
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
