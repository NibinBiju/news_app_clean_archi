import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:new_app_clean_archi/features/dialy_news/presentation/bloc/articles/remote/remote_article_bloc.dart';
import 'package:new_app_clean_archi/features/dialy_news/presentation/widgets/daily_news_tile.dart';

class DailyNewsPage extends StatelessWidget {
  const DailyNewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: _homeAppbar(), body: _homeBody());
  }

  Widget _homeBody() {
    return BlocBuilder<RemoteArticleBloc, RemoteArticleState>(
      builder: (context, state) {
        if (state is RemoteArticleLoading) {
          return Center(child: CupertinoActivityIndicator());
        }
        if (state is RemoteArticleFailed) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(state.error.toString()),
                IconButton(
                  onPressed: () {
                    context.read<RemoteArticleBloc>().add(RemoteGetArticles());
                  },
                  icon: Icon(Icons.refresh),
                ),
              ],
            ),
          );
        }

        if (state is RemoteArticleDone) {
          return ListView.builder(
            itemCount: state.articles?.length ?? 0,
            itemBuilder: (context, index) {
              return DailyNewTile(articleEntity: state.articles![index]);
            },
          );
        }
        return SizedBox();
      },
    );
  }

  AppBar _homeAppbar() {
    return AppBar(
      title: Text('Daily news', style: TextStyle(color: Colors.black)),
    );
  }
}
