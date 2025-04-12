import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_app_clean_archi/features/dialy_news/domain/entities/article.dart';
import 'package:cached_network_image/cached_network_image.dart';

class DailyNewTile extends StatelessWidget {
  const DailyNewTile({super.key, required this.articleEntity});

  final ArticleEntity articleEntity;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 200,
        width: double.infinity,
        child: Row(
          spacing: 5,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(26),
              child: Container(
                width: 170,
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(23),
                  color: Color.fromARGB(255, 199, 199, 199),
                ),
                child: CachedNetworkImage(
                  imageUrl: articleEntity.urlToImage ?? "",
                  placeholder: (context, url) => CupertinoActivityIndicator(),
                  errorListener: (value) => Icon(Icons.refresh),
                  fit: BoxFit.cover,
                  errorWidget: (context, value, _) => Icon(Icons.error),
                ),
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    articleEntity.title ?? "N/a",
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    articleEntity.description ?? "",
                    style: TextStyle(
                      fontSize: 23,
                      fontWeight: FontWeight.bold,
                      color: const Color.fromARGB(255, 122, 122, 122),
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 3,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
