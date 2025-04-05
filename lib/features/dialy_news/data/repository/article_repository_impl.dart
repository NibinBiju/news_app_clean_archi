import 'package:new_app_clean_archi/core/resourse/data_state.dart';
import 'package:new_app_clean_archi/features/dialy_news/data/model/artcile_model.dart';
import 'package:new_app_clean_archi/features/dialy_news/domain/repository/article_repository.dart';

class ArticleRepositoryImpl implements ArticleRepository {
  @override
  Future<DataState<List<ArticleModel>>> getNewsArticles() {
    throw UnimplementedError();
  }
}
