part of 'widgets.dart';

class MFImageView extends StatefulWidget {
  const MFImageView({
    super.key,
    this.url,
    this.path,
    this.file,
    this.placeholder,
    this.width,
    this.height,
    this.fit,
    this.borderRadius = BorderRadius.zero,
    this.isCircular = false,
    this.showAnimation = false,
    this.errorRetry = false,
  });

  /// 图片网络路径
  final String? url;

  /// 图片本地路径
  final String? path;

  /// 图片文件
  final File? file;

  /// 占位图
  final String? placeholder;

  /// 图片宽度
  final double? width;

  /// 图片高度
  final double? height;

  /// 图片展示形式
  final BoxFit? fit;

  /// 图片圆角
  final BorderRadius? borderRadius;

  /// 是否是原型图片
  final bool isCircular;

  /// 是否显示动画
  final bool showAnimation;

  /// 加载错误是否点击重试
  final bool errorRetry;

  factory MFImageView.load({
    required dynamic url,
    required double width,
    required double height,
    String? placeholder,
    BoxFit? fit = BoxFit.cover,
    BorderRadius? borderRadius = BorderRadius.zero,
    bool isCircular = false,
  }) {
    if (url is File) {
      return MFImageView.file(
        file: url,
        placeholder: placeholder,
        width: width,
        height: height,
        fit: fit,
        borderRadius: borderRadius,
        isCircular: isCircular,
      );
    } else if (url is String && url.startsWith('http')) {
      return MFImageView.network(
        url: url,
        placeholder: placeholder,
        width: width,
        height: height,
        fit: fit,
        borderRadius: borderRadius,
        isCircular: isCircular,
      );
    } else {
      return MFImageView.assets(
        path: url,
        placeholder: placeholder,
        width: width,
        height: height,
        fit: fit,
        borderRadius: borderRadius,
        isCircular: isCircular,
      );
    }
  }

  factory MFImageView.network({
    required String url,
    required double width,
    required double height,
    String? placeholder,
    BoxFit? fit = BoxFit.cover,
    BorderRadius? borderRadius = BorderRadius.zero,
    bool isCircular = false,
  }) {
    return MFImageView(
      url: url,
      placeholder: placeholder,
      width: width,
      height: height,
      fit: fit,
      borderRadius: borderRadius,
      isCircular: isCircular,
    );
  }

  factory MFImageView.assets({
    required String path,
    required double width,
    required double height,
    String? placeholder,
    BoxFit? fit = BoxFit.cover,
    BorderRadius? borderRadius = BorderRadius.zero,
    bool isCircular = false,
  }) {
    return MFImageView(
      path: path,
      placeholder: placeholder,
      width: width,
      height: height,
      fit: fit,
      borderRadius: borderRadius,
      isCircular: isCircular,
    );
  }

  factory MFImageView.file({
    required File file,
    required double width,
    required double height,
    String? placeholder,
    BoxFit? fit = BoxFit.cover,
    BorderRadius? borderRadius = BorderRadius.zero,
    bool isCircular = false,
  }) {
    return MFImageView(
      file: file,
      placeholder: placeholder,
      width: width,
      height: height,
      fit: fit,
      borderRadius: borderRadius,
      isCircular: isCircular,
    );
  }

  @override
  State<MFImageView> createState() => _MFImageViewState();
}

class _MFImageViewState extends State<MFImageView>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 2),
        lowerBound: 0.0,
        upperBound: 1.0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ExtendedImage image;
    if (widget.url != null) {
      image = ExtendedImage.network(
        widget.url!,
        width: widget.width,
        height: widget.height,
        cache: true,
        borderRadius: widget.borderRadius ?? BorderRadius.circular(0.0),
        shape: widget.isCircular ? BoxShape.circle : BoxShape.rectangle,
        fit: widget.fit,
        loadStateChanged: (ExtendedImageState state) {
          switch (state.extendedImageLoadState) {
            case LoadState.loading:
              _controller.reset();
              return Container(
                width: widget.width,
                height: widget.height,
                alignment: Alignment.center,
                child: const CupertinoActivityIndicator(
                  radius: 10,
                ),
              );
            case LoadState.completed:
              _controller.forward();
              return widget.showAnimation
                  ? FadeTransition(
                      opacity: _controller,
                      child: ExtendedRawImage(
                        image: state.extendedImageInfo?.image,
                        fit: widget.fit,
                        width: widget.width,
                        height: widget.height,
                      ),
                    )
                  : ExtendedRawImage(
                      image: state.extendedImageInfo?.image,
                      fit: widget.fit,
                      width: widget.width,
                      height: widget.height,
                    );
            default:
              _controller.reset();
              return GestureDetector(
                onTap: widget.errorRetry
                    ? () {
                        state.reLoadImage();
                      }
                    : null,
                child: Stack(
                  fit: StackFit.expand,
                  children: <Widget>[
                    Image.asset(
                      widget.placeholder ??
                          (widget.isCircular
                              ? Config.defaultHead
                              : Config.defaultImage),
                      fit: widget.fit,
                    ),
                  ],
                ),
              );
          }
        },
      );
    } else if (widget.path != null) {
      image = ExtendedImage.asset(
        widget.path!,
        width: widget.width,
        height: widget.height,
        fit: widget.fit,
      );
    } else {
      image = ExtendedImage.file(
        widget.file!,
        width: widget.width,
        height: widget.height,
        fit: widget.fit,
      );
    }

    return widget.isCircular
        ? ClipOval(
            child: image,
          )
        : ClipRRect(
            borderRadius: widget.borderRadius ?? BorderRadius.zero,
            child: image,
          );
  }
}
