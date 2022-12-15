import 'package:flutter/material.dart';
import 'package:wordpress_api/wordpress_api.dart';
class Home_Screens extends StatefulWidget {
  const Home_Screens({Key? key}) : super(key: key);

  @override
  State<Home_Screens> createState() => _Home_ScreensState();
}

class _Home_ScreensState extends State<Home_Screens> {
   List listdata = [];
   int i = 0;
   void getData() async {
        final api = WordPressAPI('https://sports.animexdrg.com/wp-json/wp/v2/posts');
        final res = await api.posts.fetch();
        List data= new List.from(res.data);
        // for (final post in res.data as List<Post>) {
        //   print(WPUtils.parseHtml(post.content));
        // } 
        listdata.addAll(data);
        print(listdata);
    }

    @override
      void initState() {
        super.initState();
        getData();
      }
      @override
      Widget build(BuildContext context) {
        return Scaffold(
          body: Center(
            child: ListView.builder(
              itemCount: listdata.length,
              itemBuilder: (
                (context, index)
                  { return
                    Container(
                    margin: EdgeInsets.all(3.0),
                    child: Text(listdata[index]["date"].toString()),
                     );
                  }
              ),),),
            
        );
  }
}