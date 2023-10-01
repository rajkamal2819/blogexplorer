class BlogList {
  BlogList({
    required this.blogs,
  });

  final List<Blog> blogs;

  factory BlogList.fromJson(Map<String, dynamic> json) {
    return BlogList(
      blogs: json["blogs"] == null
          ? []
          : List<Blog>.from(json["blogs"]!.map((x) => Blog.fromJson(x))),
    );
  }

  Map<String, dynamic> toJson() => {
        "blogs": blogs.map((x) => x.toJson()).toList(),
      };
}

class Blog {
  Blog({
    required this.id,
    required this.imageUrl,
    required this.title,
  });

  final String? id;
  final String? imageUrl;
  final String? title;

  factory Blog.fromJson(Map<String, dynamic> json) {
    return Blog(
      id: json["id"],
      imageUrl: json["image_url"],
      title: json["title"],
    );
  }

  Map<String, dynamic> toJson() => {
        "id": id,
        "image_url": imageUrl,
        "title": title,
      };
}
