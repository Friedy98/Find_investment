class ApiResponse<T> {
  final T? data;
  final String? message;
  final bool success;

  ApiResponse({this.data, this.message, this.success = true});
}
