import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dioProvider = Provider<Dio>(
  (_) => Dio(
    BaseOptions(
      baseUrl: 'http://admin:admin@89.108.108.195/do_demo/hs/bit/',
    ),
  ),
);
