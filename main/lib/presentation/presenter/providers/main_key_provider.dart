import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final StateProvider<UniqueKey> mainKeyProvider =
    StateProvider<UniqueKey>((ref) => UniqueKey());
