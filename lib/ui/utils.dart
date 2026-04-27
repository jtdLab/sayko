part of 'ui.dart';

extension UiUtilsX on BuildContext {
  Brightness get deviceBrightness => MediaQuery.platformBrightnessOf(this);

  double get deviceHeight => MediaQuery.heightOf(this);

  double get devicePixelRatio => MediaQuery.devicePixelRatioOf(this);

  double get deviceWidth => MediaQuery.widthOf(this);

  Orientation get orientation => MediaQuery.orientationOf(this);

  EdgeInsets get viewInsets => MediaQuery.viewInsetsOf(this);
}
