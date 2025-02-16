import 'package:dependencies/dependencies.dart';
import 'package:stn_post/models/enums.dart';
import 'package:stn_user/stn_user.dart';

part 'post.freezed.dart';
part 'post.g.dart';

@freezed
class Post with _$Post {
  factory Post({
    required String id,
    required User author,
    required String availability,
    required PostContent content,
    required PostInteraction interaction,
  }) = _Post;

  const Post._();

  factory Post.create({
    required User author,
    required String availability,
    required PostContent content,
    required PostInteraction interaction,
  }) {
    return Post(
      id: const Uuid().v4(),
      author: author,
      availability: availability,
      content: content,
      interaction: interaction,
    );
  }

  bool get isImage => content.mediaType == MediaType.image.name;

  bool get isVideo => content.mediaType == MediaType.video.name;

  bool get isSaved => interaction.savedBy.contains(currentUser?.pubKey);

  bool get isIgnored => interaction.ignoredBy.contains(currentUser?.pubKey);

  bool get isPrivate => availability == PostAvailability.private.name;

  bool get isDirectRepost => interaction.repostRef.isNotEmpty && content.text.isEmpty && content.media.isEmpty;

  bool get isRepost => interaction.repostRef.isNotEmpty && (content.text.isNotEmpty || content.media.isNotEmpty);

  Post setLike(User user) {
    return copyWith(interaction: interaction.setLike(user));
  }

  Post unsetLike(User user) {
    return copyWith(interaction: interaction.unsetLike(user));
  }

  Post setComment(User user) {
    return copyWith(interaction: interaction.setComment(user));
  }

  Post unsetComment(User user) {
    return copyWith(interaction: interaction.unsetComment(user));
  }

  Post ignorePost() {
    return copyWith(interaction: interaction.ignorePost());
  }

  Post undoIgnorePost() {
    return copyWith(interaction: interaction.undoIgnorePost());
  }

  Post repost(User user, String postId) {
    return copyWith(interaction: interaction.repost(user, postId));
  }

  Post unsetRepost(User user, String postId) {
    return copyWith(interaction: interaction.unsetRepost(user, postId));
  }

  Post incView(User? user) {
    return copyWith(interaction: interaction.incView(user));
  }

  Post handleSave() {
    if (isSaved) {
      return copyWith(interaction: interaction.unSavePost());
    }

    return copyWith(interaction: interaction.savePost());
  }

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);
}

@freezed
class PostContent with _$PostContent {
  const factory PostContent({
    required String media,
    required String image,
    required String text,
    required String type,
    required String mediaType,
    required String createdAt,
    required String updatedAt,
    String? mediaFilePath,
    String? metadata,
  }) = _PostContent;

  const PostContent._();

  factory PostContent.create({
    required String? media,
    required String? image,
    required String? text,
    required String? mediaType,
    required String? type,
    String? metadata,
  }) {
    final now = DateTime.now().toUtc().toIso8601String();

    return PostContent(
      media: media ?? Strings.empty,
      image: image ?? Strings.empty,
      text: text ?? Strings.empty,
      type: type ?? PostType.post.name,
      mediaType: mediaType ?? Strings.empty,
      metadata: metadata ?? Strings.empty,
      updatedAt: now,
      createdAt: now,
    );
  }

  factory PostContent.fromJson(Map<String, dynamic> json) => _$PostContentFromJson(json);
}

@freezed
class PostInteraction with _$PostInteraction {
  const factory PostInteraction({
    required List<String> likedBy,
    required List<String> commentedBy,
    required List<String> ignoredBy,
    required List<String> savedBy,
    required String commentRef,
    required int commentCount,
    required int likeCount,
    required List<String> repostedBy,
    required List<String> reposts,
    required String repostRef,
    Post? repostData,
    required int repostCount,
    required int viewCount,
    required List<String> seenBy,
  }) = _PostInteraction;

  const PostInteraction._();

  factory PostInteraction.create({
    List<String>? likedBy,
    List<String>? savedBy,
    List<String>? commentedBy,
    int? commentCount,
    int? likeCount,
    String? commentRef,
    List<String>? repostedBy,
    List<String>? reposts,
    int? repostCount,
    String? repostRef,
    int? viewCount,
    List<String>? seenBy,
  }) {
    return PostInteraction(
      likeCount: likeCount ?? 0,
      commentCount: commentCount ?? 0,
      likedBy: likedBy ?? [],
      savedBy: savedBy ?? [],
      ignoredBy: [],
      commentedBy: commentedBy ?? [],
      repostedBy: repostedBy ?? [],
      commentRef: commentRef ?? Strings.empty,
      repostCount: repostCount ?? 0,
      repostRef: repostRef ?? Strings.empty,
      reposts: reposts ?? [],
      viewCount: viewCount ?? 0,
      seenBy: seenBy ?? [],
    );
  }

  PostInteraction setLike(User user) {
    var data = likedBy;
    if (!likedBy.contains(user.pubKey)) {
      data = [user.pubKey, ...likedBy];
    }

    return copyWith(likeCount: data.length, likedBy: data);
  }

  PostInteraction unsetLike(User user) {
    var data = <String>[];
    if (likedBy.contains(user.pubKey)) {
      data = likedBy.where((e) => e != user.pubKey).toList();
    }

    return copyWith(
      likeCount: likeCount > 0 ? likeCount - 1 : 0,
      likedBy: data,
    );
  }

  PostInteraction setComment(User user) {
    var data = commentedBy;
    if (!commentedBy.contains(user.pubKey)) {
      data = [user.pubKey, ...commentedBy];
    }

    return copyWith(commentCount: commentCount + 1, commentedBy: data);
  }

  PostInteraction unsetComment(User user) {
    var data = <String>[];
    if (commentedBy.contains(user.pubKey)) {
      data = commentedBy.where((e) => e != user.pubKey).toList();
    }

    return copyWith(
      commentCount: commentCount > 0 ? commentCount - 1 : 0,
      commentedBy: data,
    );
  }

  PostInteraction ignorePost() {
    var data = ignoredBy;
    if (!ignoredBy.contains(currentUser!.pubKey)) {
      data = [currentUser!.pubKey, ...ignoredBy];
    }

    return copyWith(ignoredBy: data);
  }

  PostInteraction undoIgnorePost() {
    var data = <String>[];
    if (ignoredBy.contains(currentUser!.pubKey)) {
      data = savedBy.where((e) => e != currentUser!.pubKey).toList();
    }

    return copyWith(ignoredBy: data);
  }

  PostInteraction repost(User user, String postId) {
    var byData = repostedBy;
    var repostsData = reposts;

    if (!repostedBy.contains(user.pubKey)) {
      byData = [user.pubKey, ...repostedBy];
    }

    if (!reposts.contains(postId)) {
      repostsData = [postId, ...reposts];
    }

    return copyWith(
      repostedBy: byData,
      reposts: repostsData,
      repostCount: repostCount + 1,
    );
  }

  PostInteraction unsetRepost(User user, String postId) {
    var byData = <String>[];
    var repostsData = <String>[];

    if (repostedBy.contains(user.pubKey)) {
      byData = repostedBy.where((e) => e != user.pubKey).toList();
    }
    if (reposts.contains(postId)) {
      repostsData = reposts.where((e) => e != postId).toList();
    }

    return copyWith(
      repostCount: repostCount > 0 ? repostCount - 1 : 0,
      repostedBy: byData,
      reposts: repostsData,
    );
  }


  PostInteraction incView(User? user) {
    var data = seenBy;
    if (user != null && !seenBy.contains(user.pubKey)) {
      data = [user.pubKey, ...seenBy];
    }

    return copyWith(viewCount: viewCount + 1, seenBy: data);
  }

  PostInteraction savePost() {
    var savedBy = this.savedBy;

    if (!savedBy.contains(currentUser!.pubKey)) {
      savedBy = [currentUser!.pubKey, ...this.savedBy];
    }

    return copyWith(savedBy: savedBy);
  }

  PostInteraction unSavePost() {
    var data = <String>[];
    if (savedBy.contains(currentUser!.pubKey)) {
      data = savedBy.where((e) => e != currentUser!.pubKey).toList();
    }

    return copyWith(savedBy: data);
  }

  factory PostInteraction.fromJson(Map<String, dynamic> json) => _$PostInteractionFromJson(json);
}

extension PrivatePost on Post {
  bool get hidePrivate =>
     isPrivate &&
     !(currentUser?.interaction.following.contains(author.pubKey) ?? false) &&
     currentUser?.pubKey != author.pubKey;
}