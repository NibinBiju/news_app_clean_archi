part of 'remote_article_bloc.dart';

sealed class RemoteArticleState extends Equatable {
  const RemoteArticleState({this.articles, this.error});
  final List<ArticleEntity>? articles;
  final DioException? error;

  @override
  List<Object> get props => [];
}

final class RemoteArticleInitial extends RemoteArticleState {}

final class RemoteArticleLoading extends RemoteArticleState {}

final class RemoteArticleDone extends RemoteArticleState {
  const RemoteArticleDone(List<ArticleEntity> article)
    : super(articles: article);
}

final class RemoteArticleFailed extends RemoteArticleState {
  const RemoteArticleFailed(DioException error) : super(error: error);
}
