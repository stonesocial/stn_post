import 'dart:convert';

import 'package:core/core.dart';
import 'package:dependencies/dependencies.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:stn_user/stn_user.dart';

import '../stn_post.dart';

const feedPostsCacheKey = 'feed_posts_cache_key';
const authorPostsCacheKey = 'author_posts_cache_key';
const activityPostsCacheKey = 'activity_posts_cache_key';
const savedPostsCacheKey = 'saved_posts_cache_key';
const hashtagPostsCacheKey = 'hashtag_posts_cache_key';

@singleton
class PostService extends ClientEitherResponseHandler {
  final BasisHttpClient httpClient;
  final ICacheStorage cacheStorage;

  PostService(this.httpClient, this.cacheStorage);

  BasisHttpClient get _httpClient => httpClient..urlBase = Defines.apiUrl;

  Future<(Failure?, Post?)> create({
    required Post post,
  }) async {
    final result = await handleClientEitherResponse(
      _httpClient.POST('posts', body: post.toJson()),
    );

    if (result.$1 != null) return (result.$1, null);

    return (null, Post.fromJson(result.$2!.data['data']));
  }

  Future<(Failure?, Post?)> update({
    required Post post,
  }) async {
    final result = await handleClientEitherResponse(
      _httpClient.PUT('posts/${post.id}', body: post.toJson()),
    );

    if (result.$1 != null) return (result.$1, null);

    final data = result.$2?.data['data'];

    return (null, data != null ? Post.fromJson(data) : null);
  }

  Future<(Failure?, CompleteResponse<Post>?)> getAll({
    required QueryFilters filters,
    String? user,
  }) async {
    final result = await handleClientEitherResponse(
      _httpClient.GET(
        user != null
          ? 'posts/all/$user${filters.lazyGet()}'
          : 'posts${filters.lazyGet()}',
      ),
    );

    if (result.$1 != null) return (result.$1, null);

    return (
      null,
      DataResponse(
        statusCode: result.$2!.data['statusCode'],
        data: await _mapPosts(result.$2!.data['data']),
        count: result.$2!.data['count'],
        offset: result.$2!.data['offset'],
        limit: result.$2!.data['limit'],
      ),
    );
  }

  Future<(Failure?, CompleteResponse<User>?)> getCommentedUsers(
    QueryFilters filters,
  ) async {
    final result = await handleClientEitherResponse(
      _httpClient
          .GET('posts/comments/users/${filters.key}${filters.lazyGet()}'),
    );

    if (result.$1 != null) return (result.$1, null);

    return (
      null,
      DataResponse(
        statusCode: result.$2!.data['statusCode'],
        data: List.from(result.$2!.data['data'])
            .map((e) => User.fromJson(e))
            .toList(),
        count: result.$2!.data['count'],
        offset: result.$2!.data['offset'],
        limit: result.$2!.data['limit'],
      ),
    );
  }

  Future<(Failure?, CompleteResponse<User>?)> getLikedUsers(
    QueryFilters filters,
  ) async {
    final result = await handleClientEitherResponse(
      _httpClient.GET('posts/likes/users/${filters.key}${filters.lazyGet()}'),
    );

    if (result.$1 != null) return (result.$1, null);

    return (
      null,
      DataResponse(
        statusCode: result.$2!.data['statusCode'],
        data: List.from(result.$2!.data['data'])
            .map((e) => User.fromJson(e))
            .toList(),
        count: result.$2!.data['count'],
        offset: result.$2!.data['offset'],
        limit: result.$2!.data['limit'],
      ),
    );
  }

  Future<(Failure?, Post?)> get(String id) async {
    final result = await handleClientEitherResponse(
      _httpClient.GET('posts/$id'),
    );

    if (result.$1 != null) return (result.$1, null);

    if (result.$2 != null && result.$2!.data['data'] == null) {
      return (ServerFailure(message: result.$2!.data['message']), null);
    }

    final data = Post.fromJson(result.$2!.data['data']);

    Post? post;

    if (data.isVideo) {
      post = data.copyWith(
        content: data.content.copyWith(
          mediaFilePath: (await DefaultCacheManager().getSingleFile(data.content.media)).path,
        ),
      );
    } else {
      post = data;
    }

    cachePost(post.id, post);

    return (null, post);
  }

  Future<(Failure?, CompleteResponse<Post>?)> search(
    QueryFilters filters,
  ) async {
    final result = await handleClientEitherResponse(
      _httpClient.GET('posts/search/${filters.key}${filters.lazyGet()}'),
    );

    if (result.$1 != null) return (result.$1, null);

    return (
      null,
      DataResponse(
        statusCode: result.$2!.data['statusCode'],
        data: await _mapPosts(result.$2!.data['data']),
        count: result.$2!.data['count'],
        offset: result.$2!.data['offset'],
        limit: result.$2!.data['limit'],
      ),
    );
  }

  Future<(Failure?, CompleteResponse<Post>?)> searchHashtag(
    QueryFilters filters,
  ) async {
    final result = await handleClientEitherResponse(
      _httpClient.GET('posts/hashtag/${filters.key}${filters.lazyGet()}'),
    );

    if (result.$1 != null) return (result.$1, null);

    return (
      null,
      DataResponse(
        statusCode: result.$2!.data['statusCode'],
        data: await _mapPosts(result.$2!.data['data']),
        count: result.$2!.data['count'],
        offset: result.$2!.data['offset'],
        limit: result.$2!.data['limit'],
      ),
    );
  }

  Future<(Failure?, CompleteResponse<Post>?)> trendHashtags(
    QueryFilters filters,
  ) async {
    final result = await handleClientEitherResponse(
      _httpClient.GET('posts/hashtag/trend${filters.lazyGet()}'),
    );

    if (result.$1 != null) return (result.$1, null);

    return (
      null,
      DataResponse(
        statusCode: result.$2!.data['statusCode'],
        data: await _mapPosts(result.$2!.data['data']),
        count: result.$2!.data['count'],
        offset: result.$2!.data['offset'],
        limit: result.$2!.data['limit'],
      ),
    );
  }

  Future<(Failure?, CompleteResponse<Post>?)> byAuthor(
    QueryFilters filters,
  ) async {
    final result = await handleClientEitherResponse(
      _httpClient.GET('posts/author/${filters.key}${filters.lazyGet()}'),
    );

    if (result.$1 != null) return (result.$1, null);

    return (
      null,
      DataResponse(
        statusCode: result.$2!.data['statusCode'],
        data: await _mapPosts(result.$2!.data['data']),
        count: result.$2!.data['count'],
        offset: result.$2!.data['offset'],
        limit: result.$2!.data['limit'],
      ),
    );
  }

  Future<(Failure?, CompleteResponse<Post>?)> savedByUser(
    QueryFilters filters,
  ) async {
    final result = await handleClientEitherResponse(
      _httpClient.GET('posts/saved/${filters.key}${filters.lazyGet()}'),
    );

    if (result.$1 != null) return (result.$1, null);

    return (
      null,
      DataResponse(
        statusCode: result.$2!.data['statusCode'],
        data: await _mapPosts(result.$2!.data['data']),
        count: result.$2!.data['count'],
        offset: result.$2!.data['offset'],
        limit: result.$2!.data['limit'],
      ),
    );
  }

  Future<(Failure?, CompleteResponse<Post>?)> activities(
    QueryFilters filters,
  ) async {
    final result = await handleClientEitherResponse(
      _httpClient.GET('posts/activity/${filters.key}${filters.lazyGet()}'),
    );

    if (result.$1 != null) return (result.$1, null);

    return (
      null,
      DataResponse(
        statusCode: result.$2!.data['statusCode'],
        data: await _mapPosts(result.$2!.data['data']),
        count: result.$2!.data['count'],
        offset: result.$2!.data['offset'],
        limit: result.$2!.data['limit'],
      ),
    );
  }

  Future<(Failure?, CompleteResponse<Post>?)> commentsByPost(
    QueryFilters filters,
  ) async {
    final result = await handleClientEitherResponse(
      _httpClient.GET('posts/comment/${filters.key}'),
    );

    if (result.$1 != null) return (result.$1, null);

    return (
      null,
      DataResponse(
        statusCode: result.$2!.data['statusCode'],
        data: await _mapPosts(result.$2!.data['data']),
        count: result.$2!.data['count'],
        offset: result.$2!.data['offset'],
        limit: result.$2!.data['limit'],
      ),
    );
  }

  Future<List<Post>> _mapPosts(dynamic data) async {
    if (data != null) {
      return await Future.wait(
        List.from(data).map((e) => Post.fromJson(e)).map((post) async {
          if (post.isVideo) {
            return post.copyWith(
              content: post.content.copyWith(
                mediaFilePath: (await DefaultCacheManager().getSingleFile(post.content.media)).path,
              ),
            );
          } else {
            return post;
          }
        }),
      );
    }

    return Future.value([]);
  }

  Future<(Failure?, bool)> delete(String id) async {
    final result = await handleClientEitherResponse(
      _httpClient.DELETE('posts/$id', body: {}),
    );

    if (result.$1 != null) return (result.$1, false);

    return (null, result.$2?.data['statusCode'] == 200);
  }

  //cache
  Future<(Failure?, bool)> cachePost(String key, Post value) async {
    final result = await cacheStorage.setString(
      key,
      jsonEncode(value.toJson()),
    );

    if (!result) {
      return (const CacheFailure(message: 'Error caching post'), false);
    }

    return (null, true);
  }

  Future<(Failure?, bool)> cachePosts(
    String key,
    CompleteResponse<Post> value,
  ) async {
    final result = await cacheStorage.setString(
      key,
      jsonEncode(value.toMap(value.data.map((e) => e.toJson()).toList())),
    );

    if (!result) {
      return (const CacheFailure(message: 'Error caching posts'), false);
    }

    return (null, true);
  }

  (Failure?, Post?) getCachedPost(String key) {
    try {
      final result = cacheStorage.getString(key);

      if (result == null) return (null, null);

      return (null, Post.fromJson(jsonDecode(result)));
    } catch (e) {
      return (CacheFailure(message: e.toString()), null);
    }
  }

  (Failure?, CompleteResponse<Post>?) getCachedPosts(String key) {
    final result = cacheStorage.getString(key);

    if (result == null) {
      return (const CacheFailure(message: 'Error getting cached posts'), null);
    }

    final decodeResult = jsonDecode(result);
    final data = List<Post>.from(decodeResult['data'].map((e) => Post.fromJson(e)));

    return (null, CompleteResponse<Post>.fromMap(decodeResult, data));
  }

  void clear(String key) => cacheStorage.remove(key);
}
