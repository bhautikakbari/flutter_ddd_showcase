// main.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_ddd_showcase/presentation/pages/profile/cubit/profile_cubit.dart';
import 'package:flutter_ddd_showcase/presentation/pages/search/cubit/search_cubit.dart';
import 'injection.dart';
import 'presentation/core/app_widget.dart';

void main() {
  initializeDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => getIt<SearchCubit>(),
        ),
        BlocProvider(
          create: (_) => getIt<ProfileCubit>(),
        ),
      ],
      child: const AppWidget(),
    );
  }
}