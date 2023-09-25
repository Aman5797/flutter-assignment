import 'dart:math' as math;

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignment/utils/app_colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppCacheNetworkImage extends StatelessWidget {
  const AppCacheNetworkImage({
    required this.image,
    this.isCircleImage = false,
    this.fit = BoxFit.cover,
    this.height,
    this.width,
    this.maxHeightDiskCache,
    this.maxWidthDiskCache,
    this.showLoadingProgress = false,
    this.placeholder,
    super.key,
    this.borderRadius,
  });

  final BoxFit? fit;
  final String? image;
  final double? height;
  final double? width;
  final double? borderRadius;
  final int? maxWidthDiskCache;
  final int? maxHeightDiskCache;
  final bool showLoadingProgress;
  final Widget? placeholder;
  final bool isCircleImage;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(
        isCircleImage
            ? math.max(height ?? 100, width ?? 100)
            : (borderRadius ?? 0),
      ),
      child: Semantics(
        label: 'thumbnail',
        child: (image == null || image!.isEmpty)
            ? SizedBox(height: height?.r, width: width?.r, child: placeholder!)
            : CachedNetworkImage(
                imageUrl: image ?? '',
                height: height?.r,
                width: width?.r,
                fit: fit,
                cacheKey: image,
                placeholder: placeholder == null
                    ? null
                    : (_, __) {
                        return placeholder!;
                      },
                progressIndicatorBuilder: placeholder != null
                    ? null
                    : (context, url, progress) {
                        if (showLoadingProgress) {
                          return Center(
                            child: CircularProgressIndicator(
                              value: progress.progress,
                              color: AppColors.offWhite1,
                            ),
                          );
                        } else {
                          return const SizedBox.shrink();
                        }
                      },
                errorWidget: (context, url, error) {
                  return placeholder == null
                      ? const SizedBox()
                      : SizedBox(
                          height: height?.r,
                          width: width?.r,
                          child: placeholder!,
                        );
                },
                maxWidthDiskCache: maxWidthDiskCache,
                maxHeightDiskCache: maxHeightDiskCache,
              ),
      ),
    );
  }
}
