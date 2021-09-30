class PostModel {
  final String creatorProfilePic;
  final String creatorName;
  final String? postDescription;
  final List<PostMedia> postMedia;
  final List<String>? likes;
  final List<String>? comment;
  final String shareLink;
  final String postDate;

  PostModel({
    required this.creatorProfilePic,
    required this.creatorName,
    this.postDescription,
    required this.postMedia,
    this.likes,
    this.comment,
    required this.postDate,
    required this.shareLink,
  });
}

class PostMedia {
  final String mediaType;
  final String sourceURL;

  PostMedia({
    required this.mediaType,
    required this.sourceURL,
  });
}
