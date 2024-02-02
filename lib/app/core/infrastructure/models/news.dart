import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'news.freezed.dart';
part 'news.g.dart';

@freezed
abstract class News with _$News {
  const factory News({
    required int id,
    required String title,
    required String image,
    required String imagedes,
  }) = _News;
    factory News.fromJson(Map<String, Object?> json) => _$NewsFromJson(json);
}
