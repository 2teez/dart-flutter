class Rectangle {
  double _width = 0;
  double _height = 0;

  Rectangle(this._width, this._height);

  double get width => _width;
  double get height => _height;

  void set width(double value) {
    if (value < 0) return;
    _width = value;
  }

  void set height(double value) {
    if (value < 0) return;
    _height = value;
  }

  double get area => _width * _height;

  @override
  String toString() => 'Rectangle(width: $width, height: $height)';
}
