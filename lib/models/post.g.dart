// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostImpl _$$PostImplFromJson(Map<String, dynamic> json) => _$PostImpl(
      id: json['id'] as String,
      author: User.fromJson(json['author'] as Map<String, dynamic>),
      availability: json['availability'] as String,
      content: PostContent.fromJson(json['content'] as Map<String, dynamic>),
      interaction:
          PostInteraction.fromJson(json['interaction'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$PostImplToJson(_$PostImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'author': instance.author,
      'availability': instance.availability,
      'content': instance.content,
      'interaction': instance.interaction,
    };

_$PostContentImpl _$$PostContentImplFromJson(Map<String, dynamic> json) =>
    _$PostContentImpl(
      media: json['media'] as String,
      image: json['image'] as String,
      text: json['text'] as String,
      type: json['type'] as String,
      mediaType: json['mediaType'] as String,
      createdAt: json['createdAt'] as String,
      updatedAt: json['updatedAt'] as String,
      mediaFilePath: json['mediaFilePath'] as String?,
      metadata: json['metadata'] as String?,
    );

Map<String, dynamic> _$$PostContentImplToJson(_$PostContentImpl instance) =>
    <String, dynamic>{
      'media': instance.media,
      'image': instance.image,
      'text': instance.text,
      'type': instance.type,
      'mediaType': instance.mediaType,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'mediaFilePath': instance.mediaFilePath,
      'metadata': instance.metadata,
    };

_$PostInteractionImpl _$$PostInteractionImplFromJson(
        Map<String, dynamic> json) =>
    _$PostInteractionImpl(
      likedBy:
          (json['likedBy'] as List<dynamic>).map((e) => e as String).toList(),
      commentedBy: (json['commentedBy'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      ignoredBy:
          (json['ignoredBy'] as List<dynamic>).map((e) => e as String).toList(),
      savedBy:
          (json['savedBy'] as List<dynamic>).map((e) => e as String).toList(),
      commentRef: json['commentRef'] as String,
      commentCount: (json['commentCount'] as num).toInt(),
      likeCount: (json['likeCount'] as num).toInt(),
      repostedBy: (json['repostedBy'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      reposts:
          (json['reposts'] as List<dynamic>).map((e) => e as String).toList(),
      repostRef: json['repostRef'] as String,
      repostData: json['repostData'] == null
          ? null
          : Post.fromJson(json['repostData'] as Map<String, dynamic>),
      repostCount: (json['repostCount'] as num).toInt(),
      viewCount: (json['viewCount'] as num).toInt(),
      seenBy:
          (json['seenBy'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$PostInteractionImplToJson(
        _$PostInteractionImpl instance) =>
    <String, dynamic>{
      'likedBy': instance.likedBy,
      'commentedBy': instance.commentedBy,
      'ignoredBy': instance.ignoredBy,
      'savedBy': instance.savedBy,
      'commentRef': instance.commentRef,
      'commentCount': instance.commentCount,
      'likeCount': instance.likeCount,
      'repostedBy': instance.repostedBy,
      'reposts': instance.reposts,
      'repostRef': instance.repostRef,
      'repostData': instance.repostData,
      'repostCount': instance.repostCount,
      'viewCount': instance.viewCount,
      'seenBy': instance.seenBy,
    };
