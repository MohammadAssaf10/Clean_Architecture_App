import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/routing/routes.dart';
import '../../domain/entities/home_item.dart';
import '../bloc/home_bloc.dart';
import '../bloc/home_state.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<HomeBloc, HomeState>(
        builder: (context, state) {
          if (state.isLoading && !state.isError && !state.isSuccess) {
            return const Center(
              child: CircularProgressIndicator(
                color: Colors.red,
              ),
            );
          } else if (!state.isLoading && state.isError && !state.isSuccess) {
            return Center(
              child: Text(state.message),
            );
          } else if (!state.isLoading && !state.isError && state.isSuccess) {
            return Column(
              children: [
                Flexible(
                  child: ListView.builder(
                    itemCount: state.homeItems.length,
                    itemBuilder: (context, index) {
                      final HomeItem homeItem = state.homeItems[index];
                      return Container(
                        margin: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 15),
                        padding: const EdgeInsets.symmetric(
                            vertical: 10, horizontal: 15),
                        decoration: BoxDecoration(
                          color: Colors.teal,
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: Column(
                          children: [
                            Text(
                              "ID: ${homeItem.id}",
                              style: const TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Title: ${homeItem.title}",
                              style: const TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "Description: ${homeItem.description}",
                              style: const TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, Routes.aboutPage);
                          },
                          child: const Text(
                            "Push About page",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 20),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(
                                context, Routes.homePaginationPage);
                          },
                          child: const Text(
                            "Push Home Pagination Page",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
