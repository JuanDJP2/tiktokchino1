import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tereturuk/presentation/theme/app_theme.dart';
import 'package:tereturuk/presentation/providers/discover_providers.dart';
import 'package:tereturuk/presentation/discover/discover_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider( 
          lazy: false,
          create: (_) => DiscoverProvider()..loadNextPage() 
        ),
      ],
      child: MaterialApp(
        title: 'Tereturuk',
        debugShowCheckedModeBanner: false,
        theme: AppTheme().getTheme(),
        home: const DiscoverScreen()
      ),
    );
  }
}