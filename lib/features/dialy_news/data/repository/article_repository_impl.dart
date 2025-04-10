import 'dart:io';
import 'package:dio/dio.dart';
import 'package:new_app_clean_archi/core/constants/constants.dart';
import 'package:new_app_clean_archi/core/resourse/data_state.dart';
import 'package:new_app_clean_archi/features/dialy_news/data/data_sources/remote/news_api_services.dart';
import 'package:new_app_clean_archi/features/dialy_news/data/model/artcile_model.dart';
import 'package:new_app_clean_archi/features/dialy_news/domain/repository/article_repository.dart';

class ArticleRepositoryImpl implements ArticleRepository {
  final NewsApiServices newsApiServices;
  ArticleRepositoryImpl(this.newsApiServices);

  @override
  Future<DataState<List<ArticleModel>>> getNewsArticles() async {
    final respsone = await newsApiServices.getArticles(
      apiKey: apiKey,
      category: category,
      country: country,
    );
    try {
      if (respsone.response.statusCode == HttpStatus.ok) {
        return DataSucess(respsone.data);
      } else {
        return DataFailed(
          DioException(
            requestOptions: respsone.response.requestOptions,
            error: respsone.response.statusMessage,
            message: respsone.response.statusMessage,
            response: respsone.response,
            type: DioExceptionType.badResponse,
          ),
        );
      }
    } on DioException catch (e) {
      return DataFailed(e);
    }
  }
}
