import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:wordpress_api/wordpress_api.dart';

class AnimationScreen extends StatefulWidget {
  const AnimationScreen({Key? key}) : super(key: key);

  @override
  State<AnimationScreen> createState() => _AnimationScreenState();
}

class _AnimationScreenState extends State<AnimationScreen> {
  void getData() async {
  final api = WordPressAPI('');
  print(api);
  // final res = await api.posts.fetch();

  // for (final post in res.data as List<Post>) {
  //   print(WPUtils.parseHtml(post.content));
  // }
}
@override
  void initState() {
    super.initState();
    // getData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: LoadingAnimationWidget.halfTriangleDot(
          color: const Color(0xFF1A1A3F),
          // rightDotColor: const Color(0xFFEA3799),
          size: 100,
        ),),
         
    );
  }
}
