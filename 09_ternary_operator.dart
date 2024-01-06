void main() {
  print(checkNotNull(null));
  print(checkNull(null));
}

Object checkNotNull(Object? value) => value == null ? false : true;

Object checkNull(Object? value) => value ?? true;
