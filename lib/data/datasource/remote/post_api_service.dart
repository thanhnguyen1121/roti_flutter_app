import 'package:flutter_application/data/data.dart';
import 'package:flutter_application/data/dto/post_dto.dart';
import 'package:flutter_application/domain/entity/post_model.dart';

class PostApiService extends BaseApiService {
  Future<List<PostModel>> getPost(
      {required int page, required int pageSize}) async {
    await Future.delayed(const Duration(seconds: 2));
    List<PostDto> models = [];
    if (page < 5) {
      for (int i = 0; i < pageSize; i++) {
        models.add(
          PostDto(
            mName: "Post name ${i * page + 1}",
            mContent: "Post description ${i * page + 1}",
          ),
        );
      }
    }
    return models;
  }
}
