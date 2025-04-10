import 'package:get_it/get_it.dart';
import 'package:new_app_clean_archi/features/dialy_news/data/data_sources/remote/news_api_services.dart';
import 'package:dio/dio.dart';
import 'package:new_app_clean_archi/features/dialy_news/data/repository/article_repository_impl.dart';
import 'package:new_app_clean_archi/features/dialy_news/domain/repository/article_repository.dart';
import 'package:new_app_clean_archi/features/dialy_news/presentation/bloc/articles/remote/remote_article_bloc.dart';

final getIt = GetIt.instance;

Future<void> initializeDependecies() async {
  //dio
  getIt.registerSingleton(Dio());

  //new api services
  getIt.registerSingleton<NewsApiServices>(NewsApiServices(getIt()));

  //article repo
  getIt.registerSingleton<ArticleRepository>(ArticleRepositoryImpl(getIt()));

  //Article bloc
  getIt.registerFactory<RemoteArticleBloc>(() => RemoteArticleBloc(getIt()));
}
