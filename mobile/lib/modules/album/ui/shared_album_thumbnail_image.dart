import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:immich_mobile/shared/models/asset.dart';
import 'package:immich_mobile/shared/ui/immich_image.dart';

class SharedAlbumThumbnailImage extends HookConsumerWidget {
  final Asset asset;

  const SharedAlbumThumbnailImage({super.key, required this.asset});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        // debugPrint("View ${asset.id}");
      },
      child: Stack(
        children: [
          ImmichImage.thumbnail(
            asset,
            width: 500,
            height: 500,
          ),
        ],
      ),
    );
  }
}
