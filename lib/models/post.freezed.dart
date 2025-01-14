// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Post _$PostFromJson(Map<String, dynamic> json) {
  return _Post.fromJson(json);
}

/// @nodoc
mixin _$Post {
  String get id => throw _privateConstructorUsedError;
  User get author => throw _privateConstructorUsedError;
  String get availability => throw _privateConstructorUsedError;
  PostContent get content => throw _privateConstructorUsedError;
  PostInteraction get interaction => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostCopyWith<Post> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostCopyWith<$Res> {
  factory $PostCopyWith(Post value, $Res Function(Post) then) =
      _$PostCopyWithImpl<$Res, Post>;
  @useResult
  $Res call(
      {String id,
      User author,
      String availability,
      PostContent content,
      PostInteraction interaction});

  $UserCopyWith<$Res> get author;
  $PostContentCopyWith<$Res> get content;
  $PostInteractionCopyWith<$Res> get interaction;
}

/// @nodoc
class _$PostCopyWithImpl<$Res, $Val extends Post>
    implements $PostCopyWith<$Res> {
  _$PostCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? author = null,
    Object? availability = null,
    Object? content = null,
    Object? interaction = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as User,
      availability: null == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as PostContent,
      interaction: null == interaction
          ? _value.interaction
          : interaction // ignore: cast_nullable_to_non_nullable
              as PostInteraction,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get author {
    return $UserCopyWith<$Res>(_value.author, (value) {
      return _then(_value.copyWith(author: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PostContentCopyWith<$Res> get content {
    return $PostContentCopyWith<$Res>(_value.content, (value) {
      return _then(_value.copyWith(content: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PostInteractionCopyWith<$Res> get interaction {
    return $PostInteractionCopyWith<$Res>(_value.interaction, (value) {
      return _then(_value.copyWith(interaction: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostImplCopyWith<$Res> implements $PostCopyWith<$Res> {
  factory _$$PostImplCopyWith(
          _$PostImpl value, $Res Function(_$PostImpl) then) =
      __$$PostImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      User author,
      String availability,
      PostContent content,
      PostInteraction interaction});

  @override
  $UserCopyWith<$Res> get author;
  @override
  $PostContentCopyWith<$Res> get content;
  @override
  $PostInteractionCopyWith<$Res> get interaction;
}

/// @nodoc
class __$$PostImplCopyWithImpl<$Res>
    extends _$PostCopyWithImpl<$Res, _$PostImpl>
    implements _$$PostImplCopyWith<$Res> {
  __$$PostImplCopyWithImpl(_$PostImpl _value, $Res Function(_$PostImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? author = null,
    Object? availability = null,
    Object? content = null,
    Object? interaction = null,
  }) {
    return _then(_$PostImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as User,
      availability: null == availability
          ? _value.availability
          : availability // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as PostContent,
      interaction: null == interaction
          ? _value.interaction
          : interaction // ignore: cast_nullable_to_non_nullable
              as PostInteraction,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostImpl extends _Post {
  _$PostImpl(
      {required this.id,
      required this.author,
      required this.availability,
      required this.content,
      required this.interaction})
      : super._();

  factory _$PostImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostImplFromJson(json);

  @override
  final String id;
  @override
  final User author;
  @override
  final String availability;
  @override
  final PostContent content;
  @override
  final PostInteraction interaction;

  @override
  String toString() {
    return 'Post(id: $id, author: $author, availability: $availability, content: $content, interaction: $interaction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.availability, availability) ||
                other.availability == availability) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.interaction, interaction) ||
                other.interaction == interaction));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, author, availability, content, interaction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostImplCopyWith<_$PostImpl> get copyWith =>
      __$$PostImplCopyWithImpl<_$PostImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostImplToJson(
      this,
    );
  }
}

abstract class _Post extends Post {
  factory _Post(
      {required final String id,
      required final User author,
      required final String availability,
      required final PostContent content,
      required final PostInteraction interaction}) = _$PostImpl;
  _Post._() : super._();

  factory _Post.fromJson(Map<String, dynamic> json) = _$PostImpl.fromJson;

  @override
  String get id;
  @override
  User get author;
  @override
  String get availability;
  @override
  PostContent get content;
  @override
  PostInteraction get interaction;
  @override
  @JsonKey(ignore: true)
  _$$PostImplCopyWith<_$PostImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PostContent _$PostContentFromJson(Map<String, dynamic> json) {
  return _PostContent.fromJson(json);
}

/// @nodoc
mixin _$PostContent {
  String get media => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  String get mediaType => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  String get updatedAt => throw _privateConstructorUsedError;
  String? get mediaFilePath => throw _privateConstructorUsedError;
  String? get metadata => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostContentCopyWith<PostContent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostContentCopyWith<$Res> {
  factory $PostContentCopyWith(
          PostContent value, $Res Function(PostContent) then) =
      _$PostContentCopyWithImpl<$Res, PostContent>;
  @useResult
  $Res call(
      {String media,
      String image,
      String text,
      String type,
      String mediaType,
      String createdAt,
      String updatedAt,
      String? mediaFilePath,
      String? metadata});
}

/// @nodoc
class _$PostContentCopyWithImpl<$Res, $Val extends PostContent>
    implements $PostContentCopyWith<$Res> {
  _$PostContentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? media = null,
    Object? image = null,
    Object? text = null,
    Object? type = null,
    Object? mediaType = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? mediaFilePath = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_value.copyWith(
      media: null == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      mediaType: null == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      mediaFilePath: freezed == mediaFilePath
          ? _value.mediaFilePath
          : mediaFilePath // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostContentImplCopyWith<$Res>
    implements $PostContentCopyWith<$Res> {
  factory _$$PostContentImplCopyWith(
          _$PostContentImpl value, $Res Function(_$PostContentImpl) then) =
      __$$PostContentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String media,
      String image,
      String text,
      String type,
      String mediaType,
      String createdAt,
      String updatedAt,
      String? mediaFilePath,
      String? metadata});
}

/// @nodoc
class __$$PostContentImplCopyWithImpl<$Res>
    extends _$PostContentCopyWithImpl<$Res, _$PostContentImpl>
    implements _$$PostContentImplCopyWith<$Res> {
  __$$PostContentImplCopyWithImpl(
      _$PostContentImpl _value, $Res Function(_$PostContentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? media = null,
    Object? image = null,
    Object? text = null,
    Object? type = null,
    Object? mediaType = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? mediaFilePath = freezed,
    Object? metadata = freezed,
  }) {
    return _then(_$PostContentImpl(
      media: null == media
          ? _value.media
          : media // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      mediaType: null == mediaType
          ? _value.mediaType
          : mediaType // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String,
      mediaFilePath: freezed == mediaFilePath
          ? _value.mediaFilePath
          : mediaFilePath // ignore: cast_nullable_to_non_nullable
              as String?,
      metadata: freezed == metadata
          ? _value.metadata
          : metadata // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostContentImpl extends _PostContent {
  const _$PostContentImpl(
      {required this.media,
      required this.image,
      required this.text,
      required this.type,
      required this.mediaType,
      required this.createdAt,
      required this.updatedAt,
      this.mediaFilePath,
      this.metadata})
      : super._();

  factory _$PostContentImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostContentImplFromJson(json);

  @override
  final String media;
  @override
  final String image;
  @override
  final String text;
  @override
  final String type;
  @override
  final String mediaType;
  @override
  final String createdAt;
  @override
  final String updatedAt;
  @override
  final String? mediaFilePath;
  @override
  final String? metadata;

  @override
  String toString() {
    return 'PostContent(media: $media, image: $image, text: $text, type: $type, mediaType: $mediaType, createdAt: $createdAt, updatedAt: $updatedAt, mediaFilePath: $mediaFilePath, metadata: $metadata)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostContentImpl &&
            (identical(other.media, media) || other.media == media) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.mediaType, mediaType) ||
                other.mediaType == mediaType) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.mediaFilePath, mediaFilePath) ||
                other.mediaFilePath == mediaFilePath) &&
            (identical(other.metadata, metadata) ||
                other.metadata == metadata));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, media, image, text, type,
      mediaType, createdAt, updatedAt, mediaFilePath, metadata);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostContentImplCopyWith<_$PostContentImpl> get copyWith =>
      __$$PostContentImplCopyWithImpl<_$PostContentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostContentImplToJson(
      this,
    );
  }
}

abstract class _PostContent extends PostContent {
  const factory _PostContent(
      {required final String media,
      required final String image,
      required final String text,
      required final String type,
      required final String mediaType,
      required final String createdAt,
      required final String updatedAt,
      final String? mediaFilePath,
      final String? metadata}) = _$PostContentImpl;
  const _PostContent._() : super._();

  factory _PostContent.fromJson(Map<String, dynamic> json) =
      _$PostContentImpl.fromJson;

  @override
  String get media;
  @override
  String get image;
  @override
  String get text;
  @override
  String get type;
  @override
  String get mediaType;
  @override
  String get createdAt;
  @override
  String get updatedAt;
  @override
  String? get mediaFilePath;
  @override
  String? get metadata;
  @override
  @JsonKey(ignore: true)
  _$$PostContentImplCopyWith<_$PostContentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PostInteraction _$PostInteractionFromJson(Map<String, dynamic> json) {
  return _PostInteraction.fromJson(json);
}

/// @nodoc
mixin _$PostInteraction {
  List<String> get likedBy => throw _privateConstructorUsedError;
  List<String> get commentedBy => throw _privateConstructorUsedError;
  List<String> get ignoredBy => throw _privateConstructorUsedError;
  List<String> get savedBy => throw _privateConstructorUsedError;
  String get commentRef => throw _privateConstructorUsedError;
  int get commentCount => throw _privateConstructorUsedError;
  int get likeCount => throw _privateConstructorUsedError;
  List<String> get repostedBy => throw _privateConstructorUsedError;
  List<String> get reposts => throw _privateConstructorUsedError;
  String get repostRef => throw _privateConstructorUsedError;
  Post? get repostData => throw _privateConstructorUsedError;
  int get repostCount => throw _privateConstructorUsedError;
  int get viewCount => throw _privateConstructorUsedError;
  List<String> get seenBy => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PostInteractionCopyWith<PostInteraction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostInteractionCopyWith<$Res> {
  factory $PostInteractionCopyWith(
          PostInteraction value, $Res Function(PostInteraction) then) =
      _$PostInteractionCopyWithImpl<$Res, PostInteraction>;
  @useResult
  $Res call(
      {List<String> likedBy,
      List<String> commentedBy,
      List<String> ignoredBy,
      List<String> savedBy,
      String commentRef,
      int commentCount,
      int likeCount,
      List<String> repostedBy,
      List<String> reposts,
      String repostRef,
      Post? repostData,
      int repostCount,
      int viewCount,
      List<String> seenBy});

  $PostCopyWith<$Res>? get repostData;
}

/// @nodoc
class _$PostInteractionCopyWithImpl<$Res, $Val extends PostInteraction>
    implements $PostInteractionCopyWith<$Res> {
  _$PostInteractionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? likedBy = null,
    Object? commentedBy = null,
    Object? ignoredBy = null,
    Object? savedBy = null,
    Object? commentRef = null,
    Object? commentCount = null,
    Object? likeCount = null,
    Object? repostedBy = null,
    Object? reposts = null,
    Object? repostRef = null,
    Object? repostData = freezed,
    Object? repostCount = null,
    Object? viewCount = null,
    Object? seenBy = null,
  }) {
    return _then(_value.copyWith(
      likedBy: null == likedBy
          ? _value.likedBy
          : likedBy // ignore: cast_nullable_to_non_nullable
              as List<String>,
      commentedBy: null == commentedBy
          ? _value.commentedBy
          : commentedBy // ignore: cast_nullable_to_non_nullable
              as List<String>,
      ignoredBy: null == ignoredBy
          ? _value.ignoredBy
          : ignoredBy // ignore: cast_nullable_to_non_nullable
              as List<String>,
      savedBy: null == savedBy
          ? _value.savedBy
          : savedBy // ignore: cast_nullable_to_non_nullable
              as List<String>,
      commentRef: null == commentRef
          ? _value.commentRef
          : commentRef // ignore: cast_nullable_to_non_nullable
              as String,
      commentCount: null == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int,
      likeCount: null == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      repostedBy: null == repostedBy
          ? _value.repostedBy
          : repostedBy // ignore: cast_nullable_to_non_nullable
              as List<String>,
      reposts: null == reposts
          ? _value.reposts
          : reposts // ignore: cast_nullable_to_non_nullable
              as List<String>,
      repostRef: null == repostRef
          ? _value.repostRef
          : repostRef // ignore: cast_nullable_to_non_nullable
              as String,
      repostData: freezed == repostData
          ? _value.repostData
          : repostData // ignore: cast_nullable_to_non_nullable
              as Post?,
      repostCount: null == repostCount
          ? _value.repostCount
          : repostCount // ignore: cast_nullable_to_non_nullable
              as int,
      viewCount: null == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int,
      seenBy: null == seenBy
          ? _value.seenBy
          : seenBy // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PostCopyWith<$Res>? get repostData {
    if (_value.repostData == null) {
      return null;
    }

    return $PostCopyWith<$Res>(_value.repostData!, (value) {
      return _then(_value.copyWith(repostData: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PostInteractionImplCopyWith<$Res>
    implements $PostInteractionCopyWith<$Res> {
  factory _$$PostInteractionImplCopyWith(_$PostInteractionImpl value,
          $Res Function(_$PostInteractionImpl) then) =
      __$$PostInteractionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> likedBy,
      List<String> commentedBy,
      List<String> ignoredBy,
      List<String> savedBy,
      String commentRef,
      int commentCount,
      int likeCount,
      List<String> repostedBy,
      List<String> reposts,
      String repostRef,
      Post? repostData,
      int repostCount,
      int viewCount,
      List<String> seenBy});

  @override
  $PostCopyWith<$Res>? get repostData;
}

/// @nodoc
class __$$PostInteractionImplCopyWithImpl<$Res>
    extends _$PostInteractionCopyWithImpl<$Res, _$PostInteractionImpl>
    implements _$$PostInteractionImplCopyWith<$Res> {
  __$$PostInteractionImplCopyWithImpl(
      _$PostInteractionImpl _value, $Res Function(_$PostInteractionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? likedBy = null,
    Object? commentedBy = null,
    Object? ignoredBy = null,
    Object? savedBy = null,
    Object? commentRef = null,
    Object? commentCount = null,
    Object? likeCount = null,
    Object? repostedBy = null,
    Object? reposts = null,
    Object? repostRef = null,
    Object? repostData = freezed,
    Object? repostCount = null,
    Object? viewCount = null,
    Object? seenBy = null,
  }) {
    return _then(_$PostInteractionImpl(
      likedBy: null == likedBy
          ? _value._likedBy
          : likedBy // ignore: cast_nullable_to_non_nullable
              as List<String>,
      commentedBy: null == commentedBy
          ? _value._commentedBy
          : commentedBy // ignore: cast_nullable_to_non_nullable
              as List<String>,
      ignoredBy: null == ignoredBy
          ? _value._ignoredBy
          : ignoredBy // ignore: cast_nullable_to_non_nullable
              as List<String>,
      savedBy: null == savedBy
          ? _value._savedBy
          : savedBy // ignore: cast_nullable_to_non_nullable
              as List<String>,
      commentRef: null == commentRef
          ? _value.commentRef
          : commentRef // ignore: cast_nullable_to_non_nullable
              as String,
      commentCount: null == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int,
      likeCount: null == likeCount
          ? _value.likeCount
          : likeCount // ignore: cast_nullable_to_non_nullable
              as int,
      repostedBy: null == repostedBy
          ? _value._repostedBy
          : repostedBy // ignore: cast_nullable_to_non_nullable
              as List<String>,
      reposts: null == reposts
          ? _value._reposts
          : reposts // ignore: cast_nullable_to_non_nullable
              as List<String>,
      repostRef: null == repostRef
          ? _value.repostRef
          : repostRef // ignore: cast_nullable_to_non_nullable
              as String,
      repostData: freezed == repostData
          ? _value.repostData
          : repostData // ignore: cast_nullable_to_non_nullable
              as Post?,
      repostCount: null == repostCount
          ? _value.repostCount
          : repostCount // ignore: cast_nullable_to_non_nullable
              as int,
      viewCount: null == viewCount
          ? _value.viewCount
          : viewCount // ignore: cast_nullable_to_non_nullable
              as int,
      seenBy: null == seenBy
          ? _value._seenBy
          : seenBy // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PostInteractionImpl extends _PostInteraction {
  const _$PostInteractionImpl(
      {required final List<String> likedBy,
      required final List<String> commentedBy,
      required final List<String> ignoredBy,
      required final List<String> savedBy,
      required this.commentRef,
      required this.commentCount,
      required this.likeCount,
      required final List<String> repostedBy,
      required final List<String> reposts,
      required this.repostRef,
      this.repostData,
      required this.repostCount,
      required this.viewCount,
      required final List<String> seenBy})
      : _likedBy = likedBy,
        _commentedBy = commentedBy,
        _ignoredBy = ignoredBy,
        _savedBy = savedBy,
        _repostedBy = repostedBy,
        _reposts = reposts,
        _seenBy = seenBy,
        super._();

  factory _$PostInteractionImpl.fromJson(Map<String, dynamic> json) =>
      _$$PostInteractionImplFromJson(json);

  final List<String> _likedBy;
  @override
  List<String> get likedBy {
    if (_likedBy is EqualUnmodifiableListView) return _likedBy;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_likedBy);
  }

  final List<String> _commentedBy;
  @override
  List<String> get commentedBy {
    if (_commentedBy is EqualUnmodifiableListView) return _commentedBy;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_commentedBy);
  }

  final List<String> _ignoredBy;
  @override
  List<String> get ignoredBy {
    if (_ignoredBy is EqualUnmodifiableListView) return _ignoredBy;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_ignoredBy);
  }

  final List<String> _savedBy;
  @override
  List<String> get savedBy {
    if (_savedBy is EqualUnmodifiableListView) return _savedBy;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_savedBy);
  }

  @override
  final String commentRef;
  @override
  final int commentCount;
  @override
  final int likeCount;
  final List<String> _repostedBy;
  @override
  List<String> get repostedBy {
    if (_repostedBy is EqualUnmodifiableListView) return _repostedBy;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_repostedBy);
  }

  final List<String> _reposts;
  @override
  List<String> get reposts {
    if (_reposts is EqualUnmodifiableListView) return _reposts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reposts);
  }

  @override
  final String repostRef;
  @override
  final Post? repostData;
  @override
  final int repostCount;
  @override
  final int viewCount;
  final List<String> _seenBy;
  @override
  List<String> get seenBy {
    if (_seenBy is EqualUnmodifiableListView) return _seenBy;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_seenBy);
  }

  @override
  String toString() {
    return 'PostInteraction(likedBy: $likedBy, commentedBy: $commentedBy, ignoredBy: $ignoredBy, savedBy: $savedBy, commentRef: $commentRef, commentCount: $commentCount, likeCount: $likeCount, repostedBy: $repostedBy, reposts: $reposts, repostRef: $repostRef, repostData: $repostData, repostCount: $repostCount, viewCount: $viewCount, seenBy: $seenBy)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostInteractionImpl &&
            const DeepCollectionEquality().equals(other._likedBy, _likedBy) &&
            const DeepCollectionEquality()
                .equals(other._commentedBy, _commentedBy) &&
            const DeepCollectionEquality()
                .equals(other._ignoredBy, _ignoredBy) &&
            const DeepCollectionEquality().equals(other._savedBy, _savedBy) &&
            (identical(other.commentRef, commentRef) ||
                other.commentRef == commentRef) &&
            (identical(other.commentCount, commentCount) ||
                other.commentCount == commentCount) &&
            (identical(other.likeCount, likeCount) ||
                other.likeCount == likeCount) &&
            const DeepCollectionEquality()
                .equals(other._repostedBy, _repostedBy) &&
            const DeepCollectionEquality().equals(other._reposts, _reposts) &&
            (identical(other.repostRef, repostRef) ||
                other.repostRef == repostRef) &&
            (identical(other.repostData, repostData) ||
                other.repostData == repostData) &&
            (identical(other.repostCount, repostCount) ||
                other.repostCount == repostCount) &&
            (identical(other.viewCount, viewCount) ||
                other.viewCount == viewCount) &&
            const DeepCollectionEquality().equals(other._seenBy, _seenBy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_likedBy),
      const DeepCollectionEquality().hash(_commentedBy),
      const DeepCollectionEquality().hash(_ignoredBy),
      const DeepCollectionEquality().hash(_savedBy),
      commentRef,
      commentCount,
      likeCount,
      const DeepCollectionEquality().hash(_repostedBy),
      const DeepCollectionEquality().hash(_reposts),
      repostRef,
      repostData,
      repostCount,
      viewCount,
      const DeepCollectionEquality().hash(_seenBy));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostInteractionImplCopyWith<_$PostInteractionImpl> get copyWith =>
      __$$PostInteractionImplCopyWithImpl<_$PostInteractionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PostInteractionImplToJson(
      this,
    );
  }
}

abstract class _PostInteraction extends PostInteraction {
  const factory _PostInteraction(
      {required final List<String> likedBy,
      required final List<String> commentedBy,
      required final List<String> ignoredBy,
      required final List<String> savedBy,
      required final String commentRef,
      required final int commentCount,
      required final int likeCount,
      required final List<String> repostedBy,
      required final List<String> reposts,
      required final String repostRef,
      final Post? repostData,
      required final int repostCount,
      required final int viewCount,
      required final List<String> seenBy}) = _$PostInteractionImpl;
  const _PostInteraction._() : super._();

  factory _PostInteraction.fromJson(Map<String, dynamic> json) =
      _$PostInteractionImpl.fromJson;

  @override
  List<String> get likedBy;
  @override
  List<String> get commentedBy;
  @override
  List<String> get ignoredBy;
  @override
  List<String> get savedBy;
  @override
  String get commentRef;
  @override
  int get commentCount;
  @override
  int get likeCount;
  @override
  List<String> get repostedBy;
  @override
  List<String> get reposts;
  @override
  String get repostRef;
  @override
  Post? get repostData;
  @override
  int get repostCount;
  @override
  int get viewCount;
  @override
  List<String> get seenBy;
  @override
  @JsonKey(ignore: true)
  _$$PostInteractionImplCopyWith<_$PostInteractionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
