extension ObjectExt<T> on T {
  R let<R>(R Function(T it) f) => f(this);

  T also(void Function(T it) f) {
    f(this);
    return this;
  }

  T? takeIf(bool Function(T it) f) => f(this) ? this : null;
}
