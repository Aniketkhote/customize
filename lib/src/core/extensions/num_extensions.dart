import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

///Num extension to entend num functionality
extension NumExtensions on num {
  /// Creates a fixed sqaure size box.
  ///
  /// Sets [width] and [height] parameters equal to given size
  SizedBox squareBox([Widget? child]) =>
      SizedBox(height: toDouble(), width: this as double?, child: child);

  /// Create Fixed size width box
  SizedBox wBox([Widget? child]) => SizedBox(width: toDouble(), child: child);

  /// Create Fixed size height box
  SizedBox hBox([Widget? child]) => SizedBox(height: toDouble(), child: child);

  /// Returns [Duration] of [this] in days.
  Duration get days => Duration(days: this as int);

  /// Returns [Duration] of [this] in hours.
  Duration get hours => Duration(hours: this as int);

  /// Returns [Duration] of [this] in minutes.
  Duration get minutes => Duration(minutes: this as int);

  /// Returns [Duration] of [this] in seconds.
  Duration get seconds => Duration(seconds: this as int);

  /// Returns [Duration] of [this] in milliseconds.
  Duration get milliseconds => Duration(milliseconds: this as int);

  /// Returns [Duration] of [this] in microseconds.
  Duration get microseconds => Duration(microseconds: this as int);
}
