import 'package:blog_app/features/blog/data/models/blog_model.dart';
import 'package:hive/hive.dart';

abstract interface class BlogLocalDataSource {
  void uploadLocalBlogs({required List<BlogModel> blogs});
  List<BlogModel> loadBlogs();
}

class BlogLocalDataSourceImpl implements BlogLocalDataSource {
  final Box box;
  BlogLocalDataSourceImpl(this.box);

  @override
  List<BlogModel> loadBlogs() {
    List<BlogModel> blogs = [];
    for (int i = 0; i < box.length; i++) {
      final json = box.get(i.toString());
      if (json != null) {
        blogs.add(BlogModel.fromJson(json));
      }
    }
    return blogs;
  }

  @override
  void uploadLocalBlogs({required List<BlogModel> blogs}) {
    box.clear();
    for (int i = 0; i < blogs.length; i++) {
      box.put(i.toString(), blogs[i].toJson());
    }
  }
}

// import 'package:blog_app/features/blog/data/models/blog_model.dart';
// import 'package:hive/hive.dart';

// abstract interface class BlogLocalDataSource {
//   void uploadLocalBlogs({required List<BlogModel> blogs});
//   List<BlogModel> loadBlogs();
// }

// class BlogLocalDataSourceImpl implements BlogLocalDataSource {
//   final Box box;
//   BlogLocalDataSourceImpl(this.box);

//   @override
//   List<BlogModel> loadBlogs() {
//     List<BlogModel> blogs = [];
//     box.read(() {
//       for (int i = 0; i < box.length; i++) {
//         blogs.add(BlogModel.fromJson(box.get(i.toString())));
//       }
//     });

//     return blogs;
//   }

//   @override
//   void uploadLocalBlogs({required List<BlogModel> blogs}) {
//     box.clear();

//     box.write(() {
//       for (int i = 0; i < blogs.length; i++) {
//         box.put(i.toString(), blogs[i].toJson());
//       }
//     });
//   }
// }
