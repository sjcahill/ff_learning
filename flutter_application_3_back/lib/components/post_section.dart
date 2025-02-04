import 'package:flutter/material.dart';
import '../models/post.dart';
import 'post_card.dart';

// 1
class PostSection extends StatelessWidget {
  final List<Post> posts;
  const PostSection({
    super.key,
    required this.posts,
  });
  @override
  Widget build(BuildContext context) {
// 2
    return Padding(
      padding: const EdgeInsets.all(8.0),
      // 3
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(left: 16.0, bottom: 8.0),
            // 4
            child: Text(
              'Friend\'s Activity',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListView.separated(
            primary: false,
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: posts.length,
            itemBuilder: (context, index) {
              return PostCard(post: posts[index]);
            },
            separatorBuilder: (context, index) {
              return const SizedBox(height: 16);
            },
          ),
        ],
      ),
    );
  }
}
