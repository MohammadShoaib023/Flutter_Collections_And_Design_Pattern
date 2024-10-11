import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../config/theme/app_theme.dart';
import '../bloc/theme_bloc.dart';

class HydratedPage extends StatelessWidget {
  const HydratedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => ThemeCubit()),
      ],
      child: BlocBuilder<ThemeCubit, ThemeMode>(
        builder: (context, ThemeMode mode) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            themeMode: mode,
            theme: AppTheme.light,
            darkTheme: AppTheme.dark,
            home: const Banner(
              message: 'FlexZ',
              location: BannerLocation.topEnd,
              child: FinalView(),
            ),
          );
        },
      ),
    );
  }
}

class FinalView extends StatelessWidget {
  const FinalView({super.key});

  final List<(String, ThemeMode)> _themes = const [
    ('Dark', ThemeMode.dark),
    ('Light', ThemeMode.light),
    ('System', ThemeMode.system),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BLOC Change Theme'),
      ),
      body: Center(
        child: BlocBuilder<ThemeCubit, ThemeMode>(
          builder: (context, selectedTheme) {
            return Column(
              children: List.generate(
                _themes.length,
                (index) {
                  final String label = _themes[index].$1;
                  final ThemeMode theme = _themes[index].$2;

                  return ListTile(
                    title: Text(
                      label,
                      style: TextStyle(
                          fontWeight:
                              selectedTheme == theme ? FontWeight.bold : null),
                    ),
                    onTap: () => context.read<ThemeCubit>().updateTheme(theme),
                    trailing: selectedTheme == theme
                        ? Icon(
                            Icons.check,
                            color: Theme.of(context).colorScheme.primary,
                          )
                        : null,
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
