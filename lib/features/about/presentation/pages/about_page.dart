import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/about_bloc.dart';
import '../bloc/about_state.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AboutBloc, AboutState>(
        builder: (context, state) {
          if (state.isLoading && !state.isError && !state.isSuccess) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (!state.isLoading && state.isError && !state.isSuccess) {
            return Center(
              child: Text(state.message),
            );
          } else if (!state.isLoading &&
              !state.isError &&
              state.isSuccess &&
              state.about != null) {
            return Center(
              child: Text(state.about!.text),
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
