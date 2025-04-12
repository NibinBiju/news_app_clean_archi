import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_app_clean_archi/config/theme/app_theme.dart';
import 'package:new_app_clean_archi/features/dialy_news/presentation/bloc/articles/remote/remote_article_bloc.dart';
import 'package:new_app_clean_archi/features/dialy_news/presentation/pages/home/daily_news_page.dart';
import 'package:new_app_clean_archi/injection_container.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDependecies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RemoteArticleBloc>(
      create: (context) => getIt()..add(const RemoteGetArticles()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: appTheme(),
        home: DailyNewsPage(),
      ),
    );
  }
}
