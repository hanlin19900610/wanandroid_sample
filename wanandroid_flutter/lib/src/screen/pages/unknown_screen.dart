import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

import '../../../generated/l10n.dart';
import '../../../generated/r.dart';
import '../../core/utils/ext/ext.dart';


class UnknownScreen extends StatefulWidget {
  const UnknownScreen({super.key, required this.state});
  final GoRouterState state;
  @override
  State<UnknownScreen> createState() => _UnknownScreenState();
}

class _UnknownScreenState extends State<UnknownScreen> {

  final ValueNotifier<bool> _isExpandedValueNotifier = ValueNotifier<bool>(false);

  @override
  void dispose() {
    super.dispose();
    _isExpandedValueNotifier.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).unknownPath),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverFillRemaining(
            child: Center(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 32.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      R.imagesUnknownPath,
                      width: 120.w,
                    ),
                    Text(S.of(context).unknownPath, style: context.theme.textTheme.titleSmall,),
                    const Gap.vs(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Flexible(
                          child: Text(S.of(context).unknownPathMsg),
                        ),
                        ValueListenableBuilder<bool>(
                          valueListenable: _isExpandedValueNotifier,
                          builder:
                              (BuildContext context, bool isExpanded, _) =>
                              ExpandIcon(
                                isExpanded: isExpanded,
                                onPressed: (bool value) {
                                  _isExpandedValueNotifier.value = !value;
                                },
                                padding: EdgeInsets.zero,
                              ),
                        ),
                      ],
                    ),
                    ValueListenableBuilder<bool>(
                      valueListenable: _isExpandedValueNotifier,
                      builder: (_, bool isExpanded, __) {
                        if (isExpanded) {
                          return Text(
                            widget.state.error.toString(),
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                          );
                        }

                        return const SizedBox.shrink();
                      },
                    ),
                    const Gap.vb(),
                    ElevatedButton(
                      onPressed: () {
                        const HomeRouteData().go(context);
                      },
                      child: Text(S.of(context).backHome),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      )
    );
  }
}
