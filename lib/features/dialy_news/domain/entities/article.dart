import 'package:equatable/equatable.dart';

class ArticleEntity extends Equatable {
  final int? id;
  final String? author;
  final String? description;
  final String? title;
  final String? url;
  final String? urlToImage;
  final String? publishedAt;
  final String? content;

 const ArticleEntity({
     this.id,
     this.author,
     this.description,
     this.title,
     this.url,
     this.urlToImage,
     this.publishedAt,
     this.content,
  });

  @override
  List<Object?> get props {
    return [
      id,
      author,
      description,
      title,
      url,
      urlToImage,
      publishedAt,
      content,
    ];
  }
}
