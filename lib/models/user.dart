import 'package:meta/meta.dart' show required;

class User {
  final String name;
  final String imageUrl;

  const User({
    @required this.name,
    @required this.imageUrl,
  });
}