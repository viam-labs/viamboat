import 'package:viam_marine/sdk/src/domain/data/models/viam_tags_filter_type.dart';
import 'package:viam_marine/sdk/src/gen/app/data/v1/data.pb.dart';

class ViamTagsFilter {
  final ViamTagsFilterType? type;
  final List<String>? tags;

  const ViamTagsFilter({
    this.type,
    this.tags,
  });
}

extension TagsFilterMapper on ViamTagsFilter {
  TagsFilter toDto() => TagsFilter(
        type: type?.toDto(),
        tags: tags,
      );
}
