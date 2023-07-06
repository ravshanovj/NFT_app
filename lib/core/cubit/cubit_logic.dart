import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nft_app/core/cubit/cubits.dart';
import 'package:nft_app/core/cubit/cubits_states.dart';
import 'package:nft_app/view/splash_screen.dart';

class AppCubitLogics extends StatefulWidget {
  const AppCubitLogics({Key? key}) : super(key: key);

  @override
  State<AppCubitLogics> createState() => _AppCubitLogicsState();
}

class _AppCubitLogicsState extends State<AppCubitLogics> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AppCubits, CubitStates>(
        builder: (
          context,
          state,
        ) {
          if (state is WelcomeState) {
            return const WelcomePage();
          } else {
            return Container();
          }
        },
      ),
    );
  }
}
