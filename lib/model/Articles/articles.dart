

class Article {
    Article({
        required this.source,
        this.author,
        required this.title,
        this.description,
        required this.url,
        this.urlToImage,
        required this.publishedAt,
        this.content,
    });

    factory Article.fromJson(Map<String, dynamic> json) => Article(
        source: Source.fromJson(json['source']),
        author: json['author'],
        title: json['title'],
        description: json['description'],
        url: json['url'],
        urlToImage: json['urlToImage'],
        publishedAt: DateTime.parse(json['publishedAt']),
        content: json['content'],
    );

    Source source;
    String? author;
    String title;
    String? description;
    String url;
    String? urlToImage;
    DateTime publishedAt;
    String? content;

    Map<String, dynamic> toJson() =><String,dynamic> {
        'source': source.toJson(),
        'author': author,
        'title': title,
        'description': description,
        'url': url,
        'urlToImage': urlToImage,
        'publishedAt': publishedAt.toIso8601String(),
        'content': content,
    };
}

class Source {
    Source({
        this.id,
        required this.name,
    });

    factory Source.fromJson(Map<String, dynamic> json) => Source(
        id: json['id'] as String,
        name: json['name'] as String,
    );

    String? id;
    String name;

    Map<String, dynamic> toJson() => <String, dynamic>{
        'id': id,
        'name': name,
    };
}
