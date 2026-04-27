part of '../ui.dart';

abstract class SaykoImage extends StatelessWidget {
  const factory SaykoImage({
    required ImageProvider<Object> image,
    ImageFrameBuilder? frameBuilder,
    ImageLoadingBuilder? loadingBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment,
    ImageRepeat repeat,
    Rect? centerSlice,
    bool matchTextDirection,
    bool gaplessPlayback,
    bool isAntiAlias,
    FilterQuality filterQuality,
    Key? key,
  }) = _SaykoImage;

  /// A widget for displaying non-SVG images from asset files.
  ///
  /// This allows you to load and display raster-based images
  /// (e.g., PNG, JPG, GIF) from assets.
  ///
  /// For vector-based images (SVG), use [SaykoImage.assetSvg] instead.
  const factory SaykoImage.asset(
    String name, {
    ImageFrameBuilder frameBuilder,
    ImageErrorWidgetBuilder errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment,
    ImageRepeat repeat,
    Rect? centerSlice,
    bool matchTextDirection,
    bool gaplessPlayback,
    bool isAntiAlias,
    FilterQuality filterQuality,
    int? cacheWidth,
    int? cacheHeight,
    Key? key,
  }) = _SaykoImageAsset;

  /// A widget for displaying SVG images from asset files.
  ///
  /// This allows you to load and render vector-based images (SVG) from assets.
  ///
  /// For raster-based images (e.g., PNG, JPG, GIF), use [SaykoImage.asset]
  /// instead.
  const factory SaykoImage.assetSvg(
    String assetName, {
    bool matchTextDirection,
    double width,
    double height,
    BoxFit fit,
    AlignmentGeometry alignment,
    bool allowDrawingOutsideViewBox,
    WidgetBuilder placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics,
    Clip clipBehavior,
    SvgTheme? theme,
    ColorFilter? colorFilter,
    Key? key,
  }) = _SaykoImageAssetSvg;

  /// A widget for displaying images from a network URL.
  ///
  /// This allows you to load and display raster-based images
  /// (e.g., PNG, JPG, GIF) directly from a remote server or online resource.
  const factory SaykoImage.network({
    required String imageUrl,
    Map<String, String>? httpHeaders,
    ImageWidgetBuilder? imageBuilder,
    PlaceholderWidgetBuilder? placeholder,
    ProgressIndicatorBuilder? progressIndicatorBuilder,
    LoadingErrorWidgetBuilder? errorWidget,
    Duration? fadeOutDuration,
    Curve fadeOutCurve,
    Duration fadeInDuration,
    Curve fadeInCurve,
    double? width,
    double? height,
    BoxFit? fit,
    Alignment alignment,
    ImageRepeat repeat,
    bool matchTextDirection,
    bool useOldImageOnUrlChange,
    Color? color,
    FilterQuality filterQuality,
    BlendMode? colorBlendMode,
    Duration? placeholderFadeInDuration,
    int? memCacheWidth,
    int? memCacheHeight,
    String? cacheKey,
    int? maxWidthDiskCache,
    int? maxHeightDiskCache,
    ValueChanged<Object>? errorListener,
    Key? key,
  }) = _SaykoImageNetwork;

  /// A widget for displaying images from a list of bytes in memory.
  ///
  /// This allows you to load and display raster-based images
  /// (e.g., PNG, JPG, GIF) directly from memory.
  const factory SaykoImage.memory(
    Uint8List bytes, {
    double scale,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    FilterQuality filterQuality,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment,
    ImageRepeat repeat,
    Rect? centerSlice,
    bool matchTextDirection,
    bool gaplessPlayback,
    String? semanticLabel,
    bool excludeFromSemantics,
    bool isAntiAlias,
    int? cacheWidth,
    int? cacheHeight,
    Key? key,
  }) = _SaykoImageMemory;

  const SaykoImage._({
    this.frameBuilder,
    this.loadingBuilder,
    this.errorBuilder,
    this.semanticLabel,
    this.excludeFromSemantics = false,
    this.width,
    this.height,
    this.color,
    this.opacity,
    this.colorBlendMode,
    this.fit,
    this.alignment = Alignment.center,
    this.repeat = ImageRepeat.noRepeat,
    this.centerSlice,
    this.matchTextDirection = false,
    this.gaplessPlayback = false,
    this.isAntiAlias = false,
    this.filterQuality = FilterQuality.medium,
    super.key,
  });

  /// A builder function responsible for creating the widget that represents
  /// this image.
  ///
  /// If this is null, this widget will display an image that is painted as
  /// soon as the first image frame is available (and will appear to "pop" in
  /// if it becomes available asynchronously). Callers might use this builder to
  /// add effects to the image (such as fading the image in when it becomes
  /// available) or to display a placeholder widget while the image is loading.
  ///
  /// For more information on how to interpret the arguments that are passed to
  /// this builder, see the documentation on [ImageFrameBuilder].
  ///
  /// To have finer-grained control over the way that an image's loading
  /// progress is communicated to the user, see [loadingBuilder].
  ///
  /// ## Chaining with [loadingBuilder]
  ///
  /// If a [loadingBuilder] has _also_ been specified for an image, the two
  /// builders will be chained together: the _result_ of this builder will
  /// be passed as the `child` argument to the [loadingBuilder]. For example,
  /// consider the following builders used in conjunction:
  ///
  /// {@template flutter.widgets.Image.frameBuilder.chainedBuildersExample}
  /// ```dart
  /// Image(
  ///   image: _image,
  ///   frameBuilder: (BuildContext context, Widget child, int? frame, bool? wasSynchronouslyLoaded) {
  ///     return Padding(
  ///       padding: const EdgeInsets.all(8.0),
  ///       child: child,
  ///     );
  ///   },
  ///   loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
  ///     return Center(child: child);
  ///   },
  /// )
  /// ```
  ///
  /// In this example, the widget hierarchy will contain the following:
  ///
  /// ```dart
  /// Center(
  ///   child: Padding(
  ///     padding: const EdgeInsets.all(8.0),
  ///     child: image,
  ///   ),
  /// ),
  /// ```
  /// {@endtemplate}
  ///
  /// {@tool dartpad}
  /// The following sample demonstrates how to use this builder to implement an
  /// image that fades in once it's been loaded.
  ///
  /// This sample contains a limited subset of the functionality that the
  /// [FadeInImage] widget provides out of the box.
  ///
  /// ** See code in examples/api/lib/widgets/image/image.frame_builder.0.dart **
  /// {@end-tool}
  final ImageFrameBuilder? frameBuilder;

  /// A builder that specifies the widget to display to the user while an image
  /// is still loading.
  ///
  /// If this is null, and the image is loaded incrementally (e.g. over a
  /// network), the user will receive no indication of the progress as the
  /// bytes of the image are loaded.
  ///
  /// For more information on how to interpret the arguments that are passed to
  /// this builder, see the documentation on [ImageLoadingBuilder].
  ///
  /// ## Performance implications
  ///
  /// If a [loadingBuilder] is specified for an image, the [Image] widget is
  /// likely to be rebuilt on every
  /// [rendering pipeline frame](rendering/RendererBinding/drawFrame.html) until
  /// the image has loaded. This is useful for cases such as displaying a loading
  /// progress indicator, but for simpler cases such as displaying a placeholder
  /// widget that doesn't depend on the loading progress (e.g. static "loading"
  /// text), [frameBuilder] will likely work and not incur as much cost.
  ///
  /// ## Chaining with [frameBuilder]
  ///
  /// If a [frameBuilder] has _also_ been specified for an image, the two
  /// builders will be chained together: the `child` argument to this
  /// builder will contain the _result_ of the [frameBuilder]. For example,
  /// consider the following builders used in conjunction:
  ///
  /// {@macro flutter.widgets.Image.frameBuilder.chainedBuildersExample}
  ///
  /// {@tool dartpad}
  /// The following sample uses [loadingBuilder] to show a
  /// [CircularProgressIndicator] while an image loads over the network.
  ///
  /// ** See code in examples/api/lib/widgets/image/image.loading_builder.0.dart **
  /// {@end-tool}
  ///
  /// Run against a real-world image on a slow network, the previous example
  /// renders the following loading progress indicator while the image loads
  /// before rendering the completed image.
  ///
  /// {@animation 400 400 https://flutter.github.io/assets-for-api-docs/assets/widgets/loading_progress_image.mp4}
  final ImageLoadingBuilder? loadingBuilder;

  /// A builder function that is called if an error occurs during image loading.
  ///
  /// If this builder is not provided, any exceptions will be reported to
  /// [FlutterError.onError]. If it is provided, the caller should either handle
  /// the exception by providing a replacement widget, or rethrow the exception.
  ///
  /// {@tool dartpad}
  /// The following sample uses [errorBuilder] to show a '😢' in place of the
  /// image that fails to load, and prints the error to the console.
  ///
  /// ** See code in examples/api/lib/widgets/image/image.error_builder.0.dart **
  /// {@end-tool}
  final ImageErrorWidgetBuilder? errorBuilder;

  /// If non-null, require the image to have this width (in logical pixels).
  ///
  /// If null, the image will pick a size that best preserves its intrinsic
  /// aspect ratio.
  ///
  /// It is strongly recommended that either both the [width] and the [height]
  /// be specified, or that the widget be placed in a context that sets tight
  /// layout constraints, so that the image does not change size as it loads.
  /// Consider using [fit] to adapt the image's rendering to fit the given width
  /// and height if the exact image dimensions are not known in advance.
  final double? width;

  /// If non-null, require the image to have this height (in logical pixels).
  ///
  /// If null, the image will pick a size that best preserves its intrinsic
  /// aspect ratio.
  ///
  /// It is strongly recommended that either both the [width] and the [height]
  /// be specified, or that the widget be placed in a context that sets tight
  /// layout constraints, so that the image does not change size as it loads.
  /// Consider using [fit] to adapt the image's rendering to fit the given width
  /// and height if the exact image dimensions are not known in advance.
  final double? height;

  /// If non-null, this color is blended with each image pixel using [colorBlendMode].
  final Color? color;

  /// If non-null, the value from the [Animation] is multiplied with the opacity
  /// of each image pixel before painting onto the canvas.
  ///
  /// This is more efficient than using [FadeTransition] to change the opacity
  /// of an image, since this avoids creating a new composited layer. Composited
  /// layers may double memory usage as the image is painted onto an offscreen
  /// render target.
  ///
  /// See also:
  ///
  ///  * [AlwaysStoppedAnimation], which allows you to create an [Animation]
  ///    from a single opacity value.
  final Animation<double>? opacity;

  /// The rendering quality of the image.
  ///
  /// {@template flutter.widgets.image.filterQuality}
  /// If the image is of a high quality and its pixels are perfectly aligned
  /// with the physical screen pixels, extra quality enhancement may not be
  /// necessary. If so, then [FilterQuality.none] would be the most efficient.
  ///
  /// If the pixels are not perfectly aligned with the screen pixels, or if the
  /// image itself is of a low quality, [FilterQuality.none] may produce
  /// undesirable artifacts. Consider using other [FilterQuality] values to
  /// improve the rendered image quality in this case. Pixels may be misaligned
  /// with the screen pixels as a result of transforms or scaling.
  ///
  /// Defaults to [FilterQuality.medium].
  ///
  /// See also:
  ///
  ///  * [FilterQuality], the enum containing all possible filter quality
  ///    options.
  /// {@endtemplate}
  final FilterQuality filterQuality;

  /// Used to combine [color] with this image.
  ///
  /// The default is [BlendMode.srcIn]. In terms of the blend mode, [color] is
  /// the source and this image is the destination.
  ///
  /// See also:
  ///
  ///  * [BlendMode], which includes an illustration of the effect of each blend mode.
  final BlendMode? colorBlendMode;

  /// How to inscribe the image into the space allocated during layout.
  ///
  /// The default varies based on the other fields. See the discussion at
  /// [paintImage].
  final BoxFit? fit;

  /// How to align the image within its bounds.
  ///
  /// The alignment aligns the given position in the image to the given position
  /// in the layout bounds. For example, an [Alignment] alignment of (-1.0,
  /// -1.0) aligns the image to the top-left corner of its layout bounds, while an
  /// [Alignment] alignment of (1.0, 1.0) aligns the bottom right of the
  /// image with the bottom right corner of its layout bounds. Similarly, an
  /// alignment of (0.0, 1.0) aligns the bottom middle of the image with the
  /// middle of the bottom edge of its layout bounds.
  ///
  /// To display a subpart of an image, consider using a [CustomPainter] and
  /// [Canvas.drawImageRect].
  ///
  /// If the [alignment] is [TextDirection]-dependent (i.e. if it is a
  /// [AlignmentDirectional]), then an ambient [Directionality] widget
  /// must be in scope.
  ///
  /// Defaults to [Alignment.center].
  ///
  /// See also:
  ///
  ///  * [Alignment], a class with convenient constants typically used to
  ///    specify an [AlignmentGeometry].
  ///  * [AlignmentDirectional], like [Alignment] for specifying alignments
  ///    relative to text direction.
  final AlignmentGeometry alignment;

  /// How to paint any portions of the layout bounds not covered by the image.
  final ImageRepeat repeat;

  /// The center slice for a nine-patch image.
  ///
  /// The region of the image inside the center slice will be stretched both
  /// horizontally and vertically to fit the image into its destination. The
  /// region of the image above and below the center slice will be stretched
  /// only horizontally and the region of the image to the left and right of
  /// the center slice will be stretched only vertically.
  final Rect? centerSlice;

  /// Whether to paint the image in the direction of the [TextDirection].
  ///
  /// If this is true, then in [TextDirection.ltr] contexts, the image will be
  /// drawn with its origin in the top left (the "normal" painting direction for
  /// images); and in [TextDirection.rtl] contexts, the image will be drawn with
  /// a scaling factor of -1 in the horizontal direction so that the origin is
  /// in the top right.
  ///
  /// This is occasionally used with images in right-to-left environments, for
  /// images that were designed for left-to-right locales. Be careful, when
  /// using this, to not flip images with integral shadows, text, or other
  /// effects that will look incorrect when flipped.
  ///
  /// If this is true, there must be an ambient [Directionality] widget in
  /// scope.
  final bool matchTextDirection;

  /// Whether to continue showing the old image (true), or briefly show nothing
  /// (false), when the image provider changes. The default value is false.
  ///
  /// ## Design discussion
  ///
  /// ### Why is the default value of [gaplessPlayback] false?
  ///
  /// Having the default value of [gaplessPlayback] be false helps prevent
  /// situations where stale or misleading information might be presented.
  /// Consider the following case:
  ///
  /// We have constructed a 'Person' widget that displays an avatar [Image] of
  /// the currently loaded person along with their name. We could request for a
  /// new person to be loaded into the widget at any time. Suppose we have a
  /// person currently loaded and the widget loads a new person. What happens
  /// if the [Image] fails to load?
  ///
  /// * Option A ([gaplessPlayback] = false): The new person's name is coupled
  /// with a blank image.
  ///
  /// * Option B ([gaplessPlayback] = true): The widget displays the avatar of
  /// the previous person and the name of the newly loaded person.
  ///
  /// This is why the default value is false. Most of the time, when you change
  /// the image provider you're not just changing the image, you're removing the
  /// old widget and adding a new one and not expecting them to have any
  /// relationship. With [gaplessPlayback] on you might accidentally break this
  /// expectation and re-use the old widget.
  final bool gaplessPlayback;

  /// A Semantic description of the image.
  ///
  /// Used to provide a description of the image to TalkBack on Android, and
  /// VoiceOver on iOS.
  final String? semanticLabel;

  /// Whether to exclude this image from semantics.
  ///
  /// Useful for images which do not contribute meaningful information to an
  /// application.
  final bool excludeFromSemantics;

  /// Whether to paint the image with anti-aliasing.
  ///
  /// Anti-aliasing alleviates the sawtooth artifact when the image is rotated.
  final bool isAntiAlias;
}

class _SaykoImage extends SaykoImage {
  const _SaykoImage({
    required this.image,
    super.frameBuilder,
    super.loadingBuilder,
    super.errorBuilder,
    super.semanticLabel,
    super.excludeFromSemantics = false,
    super.width,
    super.height,
    super.color,
    super.opacity,
    super.colorBlendMode,
    super.fit,
    super.alignment = Alignment.center,
    super.repeat = ImageRepeat.noRepeat,
    super.centerSlice,
    super.matchTextDirection = false,
    super.gaplessPlayback = false,
    super.isAntiAlias = false,
    super.filterQuality = FilterQuality.medium,
    super.key,
  }) : super._();

  /// The image to display.
  final ImageProvider image;

  @override
  Widget build(BuildContext context) {
    return Image(
      image: image,
      frameBuilder: frameBuilder,
      loadingBuilder: loadingBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      filterQuality: filterQuality,
    );
  }
}

class _SaykoImageAsset extends SaykoImage {
  const _SaykoImageAsset(
    this.name, {
    super.frameBuilder,
    super.errorBuilder,
    super.semanticLabel,
    super.excludeFromSemantics = false,
    this.scale,
    super.width,
    super.height,
    super.color,
    super.opacity,
    super.colorBlendMode,
    super.fit,
    super.alignment = Alignment.center,
    super.repeat = ImageRepeat.noRepeat,
    super.centerSlice,
    super.matchTextDirection = false,
    super.gaplessPlayback = false,
    super.isAntiAlias = false,
    super.filterQuality = FilterQuality.medium,
    this.cacheWidth,
    this.cacheHeight,
    super.key,
  }) : super._();

  final String name;

  final double? scale;

  final int? cacheWidth;

  final int? cacheHeight;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      name,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: SaykoAssets.package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }
}

class _SaykoImageAssetSvg extends SaykoImage {
  const _SaykoImageAssetSvg(
    this.assetName, {
    super.matchTextDirection = false,
    super.width,
    super.height,
    super.fit = BoxFit.contain,
    super.alignment = Alignment.center,
    this.allowDrawingOutsideViewBox = false,
    this.placeholderBuilder,
    this.semanticsLabel,
    super.excludeFromSemantics = false,
    this.clipBehavior = Clip.hardEdge,
    this.theme,
    this.colorFilter,
    super.key,
  }) : super._();

  /// The asset name.
  final String assetName;

  /// The placeholder to use while fetching, decoding, and parsing the SVG data.
  final WidgetBuilder? placeholderBuilder;

  /// If true, will allow the SVG to be drawn outside of the clip boundary of its
  /// viewBox.
  final bool allowDrawingOutsideViewBox;

  /// The [Semantics] label for this picture.
  ///
  /// The value indicates the purpose of the picture, and will be
  /// read out by screen readers.
  final String? semanticsLabel;

  /// The content will be clipped (or not) according to this option.
  ///
  /// See the enum [Clip] for details of all possible options and their common
  /// use cases.
  ///
  /// Defaults to [Clip.hardEdge], and must not be null.
  final Clip clipBehavior;

  /// The theme to determine currentColor and font sizing attributes.
  final SvgTheme? theme;

  /// The color filter, if any, to apply to this widget.
  final ColorFilter? colorFilter;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      assetName,
      matchTextDirection: matchTextDirection,
      package: SaykoAssets.package,
      width: width,
      height: height,
      fit: fit ?? BoxFit.contain,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      clipBehavior: clipBehavior,
      theme: theme,
      colorFilter: colorFilter,
    );
  }
}

class _SaykoImageNetwork extends SaykoImage {
  const _SaykoImageNetwork({
    required this.imageUrl,
    this.httpHeaders,
    this.imageBuilder,
    this.placeholder,
    this.progressIndicatorBuilder,
    this.errorWidget,
    this.fadeOutDuration = const Duration(milliseconds: 1000),
    this.fadeOutCurve = Curves.easeOut,
    this.fadeInDuration = const Duration(milliseconds: 500),
    this.fadeInCurve = Curves.easeIn,
    super.width,
    super.height,
    super.fit,
    super.alignment = Alignment.center,
    super.repeat = ImageRepeat.noRepeat,
    super.matchTextDirection = false,
    this.useOldImageOnUrlChange = false,
    super.color,
    super.filterQuality = FilterQuality.low,
    super.colorBlendMode,
    this.placeholderFadeInDuration,
    this.memCacheWidth,
    this.memCacheHeight,
    this.cacheKey,
    this.maxWidthDiskCache,
    this.maxHeightDiskCache,
    this.errorListener,
    super.key,
  }) : super._();

  /// The target image that is displayed.
  final String imageUrl;

  /// The target image's cache key.
  final String? cacheKey;

  /// Optional builder to further customize the display of the image.
  final ImageWidgetBuilder? imageBuilder;

  /// Widget displayed while the target [imageUrl] is loading.
  final PlaceholderWidgetBuilder? placeholder;

  /// Widget displayed while the target [imageUrl] is loading.
  final ProgressIndicatorBuilder? progressIndicatorBuilder;

  /// Widget displayed while the target [imageUrl] failed loading.
  final LoadingErrorWidgetBuilder? errorWidget;

  /// The duration of the fade-in animation for the [placeholder].
  final Duration? placeholderFadeInDuration;

  /// The duration of the fade-out animation for the [placeholder].
  final Duration? fadeOutDuration;

  /// The curve of the fade-out animation for the [placeholder].
  final Curve fadeOutCurve;

  /// The duration of the fade-in animation for the [imageUrl].
  final Duration fadeInDuration;

  /// The curve of the fade-in animation for the [imageUrl].
  final Curve fadeInCurve;

  /// Optional headers for the http request of the image url
  final Map<String, String>? httpHeaders;

  /// When set to true it will animate from the old image to the new image
  /// if the url changes.
  final bool useOldImageOnUrlChange;

  /// Will resize the image in memory to have a certain width using [ResizeImage]
  final int? memCacheWidth;

  /// Will resize the image in memory to have a certain height using [ResizeImage]
  final int? memCacheHeight;

  /// Will resize the image and store the resized image in the disk cache.
  final int? maxWidthDiskCache;

  /// Will resize the image and store the resized image in the disk cache.
  final int? maxHeightDiskCache;

  /// Listener to be called when images fails to load.
  final ValueChanged<Object>? errorListener;

  @override
  Widget build(BuildContext context) {
    // TODO(UI): Workaround as cached network images fail widget tests
    if (false) {
      return Container(
        color: const Color(0x00ffffff),
        width: width,
        height: height,
      );
    }

    return CachedNetworkImage(
      imageUrl: imageUrl,
      httpHeaders: httpHeaders,
      imageBuilder: imageBuilder,
      placeholder: placeholder,
      progressIndicatorBuilder: progressIndicatorBuilder,
      errorWidget: errorWidget,
      fadeOutDuration: fadeOutDuration,
      fadeOutCurve: fadeOutCurve,
      fadeInDuration: fadeInDuration,
      fadeInCurve: fadeInCurve,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment as Alignment,
      repeat: repeat,
      matchTextDirection: matchTextDirection,
      useOldImageOnUrlChange: useOldImageOnUrlChange,
      color: color,
      filterQuality: filterQuality,
      colorBlendMode: colorBlendMode,
      placeholderFadeInDuration: placeholderFadeInDuration,
      memCacheWidth: memCacheWidth,
      memCacheHeight: memCacheHeight,
      cacheKey: cacheKey,
      maxWidthDiskCache: maxWidthDiskCache,
      maxHeightDiskCache: maxHeightDiskCache,
      errorListener: errorListener,
    );
  }
}

class _SaykoImageMemory extends SaykoImage {
  const _SaykoImageMemory(
    this.bytes, {
    this.scale = 1.0,
    super.frameBuilder,
    super.errorBuilder,
    super.semanticLabel,
    super.excludeFromSemantics = false,
    super.width,
    super.height,
    super.color,
    super.opacity,
    super.colorBlendMode,
    super.fit,
    super.alignment = Alignment.center,
    super.repeat = ImageRepeat.noRepeat,
    super.centerSlice,
    super.matchTextDirection = false,
    super.gaplessPlayback = false,
    super.isAntiAlias = false,
    super.filterQuality = FilterQuality.medium,
    this.cacheWidth,
    this.cacheHeight,
    super.key,
  }) : super._();

  final Uint8List bytes;

  final double scale;

  final int? cacheWidth;

  final int? cacheHeight;

  @override
  Widget build(BuildContext context) {
    return Image.memory(
      bytes,
      scale: scale,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }
}
