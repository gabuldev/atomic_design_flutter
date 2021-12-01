import 'status.dart';

enum TypeComponent {
  empty,
  loading,
  error,
  regular,
}

extension TypeComponentExt on TypeComponent {
  Status<T> fromStatus<T>() {
    switch (this) {
      case TypeComponent.empty:
        return Status<T>.empty();
      case TypeComponent.loading:
        return Status<T>.loading();
      case TypeComponent.error:
        return Status<T>.error();
      case TypeComponent.regular:
        return Status<T>.regular();

      default:
        throw "INVALID STATUS";
    }
  }
}
