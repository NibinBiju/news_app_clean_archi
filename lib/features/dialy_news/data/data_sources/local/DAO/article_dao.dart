import 'package:floor/floor.dart';
import 'package:new_app_clean_archi/features/dialy_news/data/model/artcile_model.dart';


@dao
abstract class ArticleDao {
  //inser to database
  @insert
  Future<void> insertArtcile(ArticleModel articleModel);

  //delete from database
  @delete
  Future<void> deleteArtcile(ArticleModel articleModel);

  //get all articles from database
  @Query('SELECT * FROM articles')
  Future<List<ArticleModel>> getArticles();
}
