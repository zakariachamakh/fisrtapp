import 'package:flutter/material.dart';

class PageModle {
  String _Image, _Title, _dis;
  IconData _Icon;

  PageModle(this._Image, this._Title, this._dis, this._Icon);

  String get Image => _Image;

  get Title => _Title;

  get dis => _dis;

  IconData get Icon => _Icon;
}
