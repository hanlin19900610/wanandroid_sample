import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../model/hive/hive_adapter.dart';
import '../../model/models.dart';
import '../constants/hive_keys.dart';

part 'common_provider.g.dart';

part 'hive_provider.dart';
part 'locale_provider.dart';
part 'theme_provider.dart';
part 'user_settings_provider.dart';