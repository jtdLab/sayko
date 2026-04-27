part of '../ui.dart';

sealed class SaykoGap extends StatelessWidget {
  const SaykoGap({super.key});

  const factory SaykoGap.quarter({Key? key}) = _SaykoGapQuarter;

  const factory SaykoGap.half({Key? key}) = _SaykoGapHalf;

  const factory SaykoGap.threeQuarters({Key? key}) = _SaykoGapThreeQuarters;

  const factory SaykoGap.one({Key? key}) = _SaykoGapOne;

  const factory SaykoGap.oneAndHalf({Key? key}) = _SaykoGapOneAndHalf;

  const factory SaykoGap.oneAndThreeQuarters({Key? key}) =
      _SaykoGapOneAndThreeQuarters;

  const factory SaykoGap.two({Key? key}) = _SaykoGapTwo;

  const factory SaykoGap.three({Key? key}) = _SaykoGapThree;

  const factory SaykoGap.four({Key? key}) = _SaykoGapFour;

  const factory SaykoGap.five({Key? key}) = _SaykoGapFive;

  const factory SaykoGap.six({Key? key}) = _SaykoGapSix;

  const factory SaykoGap.seven({Key? key}) = _SaykoGapSeven;

  const factory SaykoGap.eight({Key? key}) = _SaykoGapEight;

  const factory SaykoGap.nine({Key? key}) = _SaykoGapNine;

  const factory SaykoGap.ten({Key? key}) = _SaykoGapTen;

  const factory SaykoGap.eleven({Key? key}) = _SaykoGapEleven;

  const factory SaykoGap.twelve({Key? key}) = _SaykoGapTwelve;

  const factory SaykoGap.thirteen({Key? key}) = _SaykoGapThirteen;

  const factory SaykoGap.fourteen({Key? key}) = _SaykoGapFourteen;

  const factory SaykoGap.custom({required double value, Key? key}) =
      _SaykoGapCustom;

  @override
  Widget build(BuildContext context) {
    final theme = context.theme;
    final spacings = theme.spacings;

    final mainAxisExtent = switch (this) {
      _SaykoGapQuarter() => spacings.quarter,
      _SaykoGapHalf() => spacings.half,
      _SaykoGapThreeQuarters() => spacings.threeQuarters,
      _SaykoGapOne() => spacings.one,
      _SaykoGapOneAndHalf() => spacings.oneAndHalf,
      _SaykoGapOneAndThreeQuarters() => spacings.oneAndThreeQuarters,
      _SaykoGapTwo() => spacings.two,
      _SaykoGapThree() => spacings.three,
      _SaykoGapFour() => spacings.four,
      _SaykoGapFive() => spacings.five,
      _SaykoGapSix() => spacings.six,
      _SaykoGapSeven() => spacings.seven,
      _SaykoGapEight() => spacings.eight,
      _SaykoGapNine() => spacings.nine,
      _SaykoGapTen() => spacings.ten,
      _SaykoGapEleven() => spacings.eleven,
      _SaykoGapTwelve() => spacings.twelve,
      _SaykoGapThirteen() => spacings.thirteen,
      _SaykoGapFourteen() => spacings.fourteen,
      _SaykoGapCustom(:final value) => value,
    };

    return gap.Gap(mainAxisExtent);
  }
}

class _SaykoGapQuarter extends SaykoGap {
  const _SaykoGapQuarter({super.key});
}

class _SaykoGapHalf extends SaykoGap {
  const _SaykoGapHalf({super.key});
}

class _SaykoGapThreeQuarters extends SaykoGap {
  const _SaykoGapThreeQuarters({super.key});
}

class _SaykoGapOne extends SaykoGap {
  const _SaykoGapOne({super.key});
}

class _SaykoGapOneAndHalf extends SaykoGap {
  const _SaykoGapOneAndHalf({super.key});
}

class _SaykoGapOneAndThreeQuarters extends SaykoGap {
  const _SaykoGapOneAndThreeQuarters({super.key});
}

class _SaykoGapTwo extends SaykoGap {
  const _SaykoGapTwo({super.key});
}

class _SaykoGapThree extends SaykoGap {
  const _SaykoGapThree({super.key});
}

class _SaykoGapFour extends SaykoGap {
  const _SaykoGapFour({super.key});
}

class _SaykoGapFive extends SaykoGap {
  const _SaykoGapFive({super.key});
}

class _SaykoGapSix extends SaykoGap {
  const _SaykoGapSix({super.key});
}

class _SaykoGapSeven extends SaykoGap {
  const _SaykoGapSeven({super.key});
}

class _SaykoGapEight extends SaykoGap {
  const _SaykoGapEight({super.key});
}

class _SaykoGapNine extends SaykoGap {
  const _SaykoGapNine({super.key});
}

class _SaykoGapTen extends SaykoGap {
  const _SaykoGapTen({super.key});
}

class _SaykoGapEleven extends SaykoGap {
  const _SaykoGapEleven({super.key});
}

class _SaykoGapTwelve extends SaykoGap {
  const _SaykoGapTwelve({super.key});
}

class _SaykoGapThirteen extends SaykoGap {
  const _SaykoGapThirteen({super.key});
}

class _SaykoGapFourteen extends SaykoGap {
  const _SaykoGapFourteen({super.key});
}

class _SaykoGapCustom extends SaykoGap {
  const _SaykoGapCustom({required this.value, super.key});

  final double value;
}

@immutable
class FSpacings extends ThemeExtension<FSpacings> {
  const FSpacings({
    required this.quarter,
    required this.half,
    required this.threeQuarters,
    required this.one,
    required this.oneAndHalf,
    required this.oneAndThreeQuarters,
    required this.two,
    required this.three,
    required this.four,
    required this.five,
    required this.six,
    required this.seven,
    required this.eight,
    required this.nine,
    required this.ten,
    required this.eleven,
    required this.twelve,
    required this.thirteen,
    required this.fourteen,
  });

  final double quarter;
  final double half;
  final double threeQuarters;
  final double one;
  final double oneAndHalf;
  final double oneAndThreeQuarters;
  final double two;
  final double three;
  final double four;
  final double five;
  final double six;
  final double seven;
  final double eight;
  final double nine;
  final double ten;
  final double eleven;
  final double twelve;
  final double thirteen;
  final double fourteen;

  @override
  FSpacings copyWith({
    double? quarter,
    double? half,
    double? threeQuarters,
    double? one,
    double? oneAndHalf,
    double? oneAndThreeQuarters,
    double? two,
    double? three,
    double? four,
    double? five,
    double? six,
    double? seven,
    double? eight,
    double? nine,
    double? ten,
    double? eleven,
    double? twelve,
    double? thirteen,
    double? fourteen,
  }) {
    return FSpacings(
      quarter: quarter ?? this.quarter,
      half: half ?? this.half,
      threeQuarters: threeQuarters ?? this.threeQuarters,
      one: one ?? this.one,
      oneAndHalf: oneAndHalf ?? this.oneAndHalf,
      oneAndThreeQuarters: oneAndThreeQuarters ?? this.oneAndThreeQuarters,
      two: two ?? this.two,
      three: three ?? this.three,
      four: four ?? this.four,
      five: five ?? this.five,
      six: six ?? this.six,
      seven: seven ?? this.seven,
      eight: eight ?? this.eight,
      nine: nine ?? this.nine,
      ten: ten ?? this.ten,
      eleven: eleven ?? this.eleven,
      twelve: twelve ?? this.twelve,
      thirteen: thirteen ?? this.thirteen,
      fourteen: fourteen ?? this.fourteen,
    );
  }

  @override
  FSpacings lerp(ThemeExtension<FSpacings>? other, double t) {
    if (other is! FSpacings) return this;

    return FSpacings(
      quarter: lerpDouble(quarter, other.quarter, t)!,
      half: lerpDouble(half, other.half, t)!,
      threeQuarters: lerpDouble(threeQuarters, other.threeQuarters, t)!,
      one: lerpDouble(one, other.one, t)!,
      oneAndHalf: lerpDouble(oneAndHalf, other.oneAndHalf, t)!,
      oneAndThreeQuarters: lerpDouble(
        oneAndThreeQuarters,
        other.oneAndThreeQuarters,
        t,
      )!,
      two: lerpDouble(two, other.two, t)!,
      three: lerpDouble(three, other.three, t)!,
      four: lerpDouble(four, other.four, t)!,
      five: lerpDouble(five, other.five, t)!,
      six: lerpDouble(six, other.six, t)!,
      seven: lerpDouble(seven, other.seven, t)!,
      eight: lerpDouble(eight, other.eight, t)!,
      nine: lerpDouble(nine, other.nine, t)!,
      ten: lerpDouble(ten, other.ten, t)!,
      eleven: lerpDouble(eleven, other.eleven, t)!,
      twelve: lerpDouble(twelve, other.twelve, t)!,
      thirteen: lerpDouble(thirteen, other.thirteen, t)!,
      fourteen: lerpDouble(fourteen, other.fourteen, t)!,
    );
  }
}
