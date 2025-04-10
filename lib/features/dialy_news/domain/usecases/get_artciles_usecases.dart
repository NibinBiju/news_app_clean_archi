import 'package:new_app_clean_archi/core/resourse/data_state.dart';
import 'package:new_app_clean_archi/core/usecases/usecases.dart';
import 'package:new_app_clean_archi/features/dialy_news/domain/entities/article.dart';
import 'package:new_app_clean_archi/features/dialy_news/domain/repository/article_repository.dart';

class GetArtcilesUsecases
    extends UseCases<DataState<List<ArticleEntity>>, void> {
  final ArticleRepository _articleRepository;
  GetArtcilesUsecases(this._articleRepository);

  @override
  Future<DataState<List<ArticleEntity>>> call({void param}) {
   return _articleRepository.getNewsArticles();
  }
}
