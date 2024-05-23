part of 'widgets.dart';

class MFSizedBox extends StatelessWidget {

  final double? width;
  final double? height;

  const MFSizedBox({super.key, this.width, this.height});

  factory MFSizedBox.width(double width){
    return MFSizedBox(width: width);
  }

  factory MFSizedBox.height(double height){
    return MFSizedBox(height: height);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(width: width, height: height,);
  }
}
