import 'dart:async';
import 'package:sqflite/sqflite.dart' as sqflite;
import 'package:floor/floor.dart';
import 'package:new_app_clean_archi/features/dialy_news/data/data_sources/local/DAO/article_dao.dart';
import 'package:new_app_clean_archi/features/dialy_news/data/model/artcile_model.dart';
part 'article_database.g.dart';

@Database(version: 1, entities: [ArticleModel])
abstract class ArticleDatabase extends FloorDatabase {
  ArticleDao get articleDao;
}
