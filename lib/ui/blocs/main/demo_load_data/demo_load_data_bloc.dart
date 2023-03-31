import 'package:flutter_application/domain/entity/post_model.dart';
import 'package:flutter_application/domain/repository/post_repository.dart';
import 'package:flutter_application/ui/blocs/main/demo_load_data/demo_load_data_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class DemoLoadDataBloc extends Cubit<DemoLoadDataState> {
  DemoLoadDataBloc() : super(const DemoLoadDataState.loading());
  final _postRepository = GetIt.instance.get<PostRepository>();
  final int pageSize = 20;
  final controller = RefreshController();

  int page = 1;

  Future<void> init() async {
    List<PostModel> models =
        await _postRepository.getPost(page: page, pageSize: pageSize);
    emit(DemoLoadDataState(models, models.isNotEmpty));
  }

  Future<void> onRefresh() async {
    state.whenOrNull((models, enablePullUp) async {
      try {
        page = 1;
        List<PostModel> models =
            await _postRepository.getPost(page: page, pageSize: pageSize);
        emit(DemoLoadDataState(models, models.isNotEmpty));
      } catch (exception) {
        //TODO show error
      }
      controller.refreshCompleted();
    });
  }

  Future<void> onLoading() async {
    state.whenOrNull((models, enablePullUp) async {
      try {
        page++;
        List<PostModel> result =
            await _postRepository.getPost(page: page, pageSize: pageSize);
        var newModels = [...models, ...result];
        controller.loadComplete();
        emit(DemoLoadDataState(newModels, result.isNotEmpty));
      } catch (exception) {
        //TODO show error
      }
      controller.loadComplete();
    });
  }
}
