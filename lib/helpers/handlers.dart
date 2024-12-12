import '../stn_post.dart';
import 'package:stn_user/stn_user.dart';

extension ListHandler on List<Post> {
  List<Post> nestDetailPosts(Post post) {
    final contains = map((e) => e.id).contains(post.id);
    if (length > 1 && contains) removeLast();
    if (!contains) add(post);

    return this;
  }
  void get sortAsc => sort((a, b) => b.content.createdAt.compareTo(a.content.createdAt));
  List<Post> keepCurrentAlive(List<Post> currentState) => where((e) => !currentState.map((e) => e.id).contains(e.id)).toList();
}

extension Handler on Post {
  bool get currentUserLiked => currentUser != null && interaction.likedBy.contains(currentUser!.pubKey);
  bool get currentUserCommented => currentUser != null && interaction.commentedBy.contains(currentUser!.pubKey);
}