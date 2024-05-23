import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:tdesign_flutter/tdesign_flutter.dart';

import '../../../../lib.dart';

class UnknownPage extends StatefulWidget {
  const UnknownPage({super.key, required this.state});

  final GoRouterState state;

  @override
  State<UnknownPage> createState() => _UnknownPageState();
}

class _UnknownPageState extends State<UnknownPage> {
  final ValueNotifier<bool> _isExpandedValueNotifier =
      ValueNotifier<bool>(false);

  @override
  void dispose() {
    super.dispose();

    _isExpandedValueNotifier.dispose();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text(S.of(context).unknownPath),
        ),
        body: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              child: Center(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.w,
                    vertical: 32.h,
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        R.imagesUnknownPath,
                        width: 120.w,
                      ),
                      Text(
                        S.of(context).unknownPath,
                        style: context.theme.textTheme.titleSmall,
                      ),
                      MFSizedBox(
                        height: 5.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            child: Text(S.of(context).unknownPathMsg),
                          ),
                          ValueListenableBuilder<bool>(
                            valueListenable: _isExpandedValueNotifier,
                            builder:
                                (BuildContext context, bool isExpanded, _) =>
                                    ExpandIcon(
                              onPressed: (bool value) {
                                _isExpandedValueNotifier.value = !value;
                              },
                              isExpanded: isExpanded,
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
                      MFSizedBox(
                        height: 20.h,
                      ),
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
        ),
      );
}
