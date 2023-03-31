import 'package:flutter_application/domain/entity/post_model.dart';

abstract class PostRepository {
  Future<List<PostModel>> getPost({required int page, required int pageSize});
}
