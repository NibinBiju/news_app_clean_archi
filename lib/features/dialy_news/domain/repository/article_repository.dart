import 'package:new_app_clean_archi/core/resourse/data_state.dart';
import 'package:new_app_clean_archi/features/dialy_news/domain/entities/article.dart';

abstract class ArticleRepository {
  Future<DataState<List<ArticleEntity>>> getNewsArticles();
}
