import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_app_clean_archi/core/resourse/data_state.dart';
import 'package:new_app_clean_archi/features/dialy_news/domain/entities/article.dart';
import 'package:new_app_clean_archi/features/dialy_news/domain/usecases/get_artciles_usecases.dart';
part 'remote_article_event.dart';
part 'remote_article_state.dart';

class RemoteArticleBloc extends Bloc<RemoteArticleEvent, RemoteArticleState> {
  final GetArtcilesUsecases _getArtcilesUsecases;
  RemoteArticleBloc(this._getArtcilesUsecases) : super(RemoteArticleInitial()) {
    on<RemoteGetArticles>(_onGetArticles);
  }

  //get articles
  void _onGetArticles(
    RemoteGetArticles event,
    Emitter<RemoteArticleState> emit,
  ) async {
    emit(RemoteArticleLoading());
    final dataState = await _getArtcilesUsecases();

    if (dataState is DataSucess && dataState.data!.isNotEmpty) {
      emit(RemoteArticleDone(dataState.data!));
    }
    if (dataState is DataFailed) {
      emit(RemoteArticleFailed(dataState.error!));
    }
  }
}
