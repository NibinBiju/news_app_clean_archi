import 'package:dio/dio.dart';
import 'package:new_app_clean_archi/core/constants/constants.dart';
import 'package:new_app_clean_archi/features/dialy_news/data/model/artcile_model.dart';
import 'package:retrofit/retrofit.dart';

part 'news_api_services.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class NewsApiServices {
  factory NewsApiServices(Dio dio) = _NewsApiServices;

  @GET('/top-headlines')
  Future<HttpResponse<List<ArticleModel>>> getArticles({
    @Query('apiKey') String? apiKey,
    @Query('category') String? category,
    @Query('country') String? country,
  });
}
