import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/lib.dart';
import 'package:flutter_application/ui/blocs/main/demo_load_data/demo_load_data_bloc.dart';
import 'package:flutter_application/ui/blocs/main/demo_load_data/demo_load_data_state.dart';
import 'package:flutter_application/ui/widgets/app_error_widget.dart';
import 'package:flutter_application/ui/widgets/app_loading_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class DemoLoadDataPage extends StatefulWidget {
  static const routeName = 'DemoLoadDataPage';

  const DemoLoadDataPage({Key? key}) : super(key: key);

  @override
  State<DemoLoadDataPage> createState() => _DemoLoadDataPageState();
}

class _DemoLoadDataPageState extends State<DemoLoadDataPage> {
  static const tag = 'DemoLoadDataPage';
  final _bloc = DemoLoadDataBloc();

  @override
  void initState() {
    super.initState();
    _bloc.init();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _bloc,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("DemoLoadDataPage"),
        ),
        body: SafeArea(
          child: BlocBuilder<DemoLoadDataBloc, DemoLoadDataState>(
            builder: (context, state) {
              return state.when(
                (models, enablePullUp) {
                  return SmartRefresher(
                    enablePullDown: true,
                    enablePullUp: enablePullUp,
                    header: const WaterDropHeader(),
                    footer: CustomFooter(
                      builder: (BuildContext context, LoadStatus? mode) {
                        Widget body;
                        if (mode == LoadStatus.loading) {
                          body = const CupertinoActivityIndicator();
                        } else {
                          body = const SizedBox.shrink();
                        }
                        return SizedBox(
                          height: 55.0,
                          child: Center(child: body),
                        );
                      },
                    ),
                    controller: _bloc.controller,
                    onRefresh: _bloc.onRefresh,
                    onLoading: _bloc.onLoading,
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(
                            models[index].name ?? '',
                            style: context.textTheme.bodyMedium,
                          ),
                          subtitle: Text(
                            models[index].content ?? '',
                            style: context.textTheme.bodySmall,
                          ),
                        );
                      },
                      itemCount: models.length,
                    ),
                  );
                },
                loading: () => const AppLoadingWidget(),
                error: (error) => AppErrorWidget(error: error),
              );
            },
          ),
        ),
      ),
    );
  }
}
