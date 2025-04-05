import 'package:new_app_clean_archi/features/dialy_news/domain/entities/article.dart';

class ArticleModel extends ArticleEntity {
  ArticleModel({
    int? id,
    String? author,
    String? description,
    String? title,
    String? url,
    String? urlToImage,
    String? publishedAt,
    String? content,
  });

  factory ArticleModel.fromJson(Map<String, dynamic> map) {
    return ArticleModel(
      id: map['id'] ?? '',
      author: map['author'] ?? '',
      content: map['content'] ?? '',
      description: map['description'] ?? '',
      publishedAt: map['publishedAt'] ?? '',
      title: map['title'] ?? '',
      url: map['url'] ?? '',
      urlToImage: map['urlToImage'] ?? '',
    );
  }
}
