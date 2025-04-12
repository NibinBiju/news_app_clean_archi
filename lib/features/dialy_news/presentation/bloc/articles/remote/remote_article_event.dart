part of 'remote_article_bloc.dart';

sealed class RemoteArticleEvent {
  const RemoteArticleEvent();
}

final class RemoteGetArticles extends RemoteArticleEvent {
  const RemoteGetArticles();
}
