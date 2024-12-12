import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:core/core.dart';
import 'package:dependencies/dependencies.dart' hide test;
import 'package:stn_post/stn_post.dart';

final testPost = Post(id: '1', interaction: PostInteraction.create(), availability: PostAvailability.public.name, author: PostAuthor.create(pubKey: 'author_pub_key', username: 'username', avatar: 'avatar', accountType: 'user'), content: PostContent.create(media: Strings.empty, image: Strings.empty, text: 'hi', mediaType: null, type: null));

class MockHttpClient extends Mock implements BasisHttpClient {}
class MockCacheStorage extends Mock implements ICacheStorage {}

void main() {
  late MockHttpClient mockHttpClient;
  late MockCacheStorage mockCacheStorage;
  late PostService postService;

  setUp(() {
    mockHttpClient = MockHttpClient();
    mockCacheStorage = MockCacheStorage();
    postService = PostService(mockHttpClient, mockCacheStorage);
  });

  group('PostService Tests', () {
    test('create post success', () async {
      final mockResponse = {
        'statusCode': 200,
        'data': {'data': testPost.toJson()},
      };

      // Mock the HTTP response
      when(mockHttpClient.POST('post_create_url', body: anyNamed('body')))
          .thenAnswer((_) async => Response(jsonEncode(mockResponse), 200));

      // Call the method
      final result = await postService.create(post: testPost);

      expect(result.$1, isNull);  // No failure
      expect(result.$2, isNotNull);  // A post is returned
      expect(result.$2!.id, equals(testPost.id));
    });

    test('create post failure', () async {
      final mockResponse = {
        'statusCode': 400,
        'data': {'message': 'Bad request'},
      };

      // Mock the HTTP response with failure
      when(mockHttpClient.POST('post_create_url', body: anyNamed('body')))
          .thenAnswer((_) async => Response(jsonEncode(mockResponse), 400));

      // Call the method
      final result = await postService.create(post: testPost);

      expect(result.$1, isNotNull);  // A failure should be returned
      expect(result.$2, isNull);  // No post should be returned
    });

    test('cache posts successfully', () async {
      final postResponse = CompleteResponse<Post>(
        statusCode: 200,
        data: [testPost],
        count: 1,
        offset: 0,
        limit: 10,
      );

      // Mock cache set success
      when(mockCacheStorage.setString(feedPostsCacheKey, json.encode(testPost.toJson())))
          .thenAnswer((_) async => true);

      final result = await postService.cachePosts(feedPostsCacheKey, postResponse);

      expect(result.$1, isNull);  // No failure
      expect(result.$2, isTrue);  // Posts cached successfully
    });

    test('get cached posts successfully', () {
      final cachedJson = jsonEncode({
        'statusCode': 200,
        'data': [testPost.toJson()],
        'count': 1,
        'offset': 0,
        'limit': 10,
      });

      // Mock the cache getString to return the cached data
      when(mockCacheStorage.getString(feedPostsCacheKey))
          .thenReturn(cachedJson);

      final result = postService.getCachedPosts('feed_posts_cache_key');

      expect(result.$1, isNull);  // No failure
      expect(result.$2, isNotNull);  // Data is returned
      expect(result.$2!.data.first.id, equals(testPost.id));
    });

    test('get cached posts failure', () {
      // Mock the cache getString to return null (no cached data)
      when(mockCacheStorage.getString(feedPostsCacheKey)).thenReturn(null);

      final result = postService.getCachedPosts(feedPostsCacheKey);

      expect(result.$1, isNotNull);  // Failure expected
      expect(result.$2, isNull);  // No data returned
    });

    test('delete post success', () async {
      const postId = '1';
      final mockResponse = {
        'statusCode': 200,
        'data': {'message': 'Deleted successfully'},
      };

      // Mock the HTTP DELETE request
      when(mockHttpClient.DELETE('post_delete_url', body: anyNamed('body')))
          .thenAnswer((_) async => Response(jsonEncode(mockResponse), 200));

      final result = await postService.delete(postId);

      expect(result.$1, isNull);  // No failure
      expect(result.$2, isTrue);  // Post deleted successfully
    });

    test('delete post failure', () async {
      const postId = '1';
      final mockResponse = {
        'statusCode': 400,
        'data': {'message': 'Bad request'},
      };

      // Mock the HTTP DELETE request with failure
      when(mockHttpClient.DELETE('post_delete_url', body: anyNamed('body')))
          .thenAnswer((_) async => Response(jsonEncode(mockResponse), 400));

      final result = await postService.delete(postId);

      expect(result.$1, isNotNull);  // A failure should be returned
      expect(result.$2, isFalse);  // Post deletion failed
    });
  });
}
