import 'package:equatable/equatable.dart';

class PostDetails extends Equatable {
  final String id;
  final String title;
  final String description;
  final String budget;
  final String location;
  final String type;
  final String language;

  const PostDetails({
    required this.id,
    required this.title,
    required this.description,
    required this.budget,
    required this.location,
    required this.type,
    required this.language,
  });

  @override
  List<Object?> get props => [
    id,
    title,
    description,
    budget,
    location,
    type,
    language,
  ];
}
