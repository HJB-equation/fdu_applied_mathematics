import 'dart:math';

import 'package:cms/cms.dart';

import 's.dart';
import 'a.dart';

export 's.dart';
export 'a.dart';

class M extends Cms<S, A> {
  M() : super(const Zero());
  @override
  Future<S> kernel(S s, A a) async => switch ((s, a)) {
    (Zero(points: final points), Init(x0: final x0)) => () {
      if (points.isEmpty) {
        return Zero([x0]);
      }
      final xs = [x0];
      for (var (steps, x) = (0, x0); steps < points.length - 1; steps++) {
        x = exp(x);
        if (x.isInfinite) {
          return Zero(xs, true);
        }
        xs.add(x);
      }
      return Zero(xs);
    }(),
    (Zero(points: final points), Step1()) => () {
      final x = exp(points.last);
      if (x.isInfinite) {
        return s.copyWith(hasReachedInfinity: true);
      }
      return Zero([...points, exp(points.last)]);
    }(),
  };
}
