import 'package:flutter_application/data/datasource/remote/post_api_service.dart';
import 'package:flutter_application/domain/entity/post_model.dart';
import 'package:flutter_application/domain/repository/post_repository.dart';

class PostRepositoryImpl extends PostRepository {
  final PostApiService _postApiService = PostApiService();

  @override
  Future<List<PostModel>> getPost(
      {required int page, required int pageSize}) async {
    return await _postApiService.getPost(page: page, pageSize: pageSize);
  }
}
