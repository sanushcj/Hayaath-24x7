// To parse this JSON data, do
//
//     final health = healthFromJson(jsonString);

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

    Source source;
    String? author;
    String title;
    String? description;
    String url;
    String? urlToImage;
    DateTime publishedAt;
    String? content;

    factory Article.fromJson(Map<String, dynamic> json) => Article(
        source: Source.fromJson(json['source']),
        author: json['author'] as String,
        title: json['title']as String,
        description: json['description']as String,
        url: json['url']as String,
        urlToImage: json['urlToImage']as String,
        publishedAt: DateTime.parse(json['publishedAt']),
        content: json['content']as String,
    );

    Map<String, dynamic> toJson() => {
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

    String? id;
    String name;

    factory Source.fromJson(Map<String, dynamic> json) => Source(
        id: json['id'],
        name: json['name'],
    );

    Map<String, dynamic> toJson() => {
        'id': id,
        'name': name,
    };
}
