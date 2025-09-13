import '../../domain/entities/post_details.dart';

class PostDetailsModel extends PostDetails {
  const PostDetailsModel({
    required super.id,
    required super.title,
    required super.description,
    required super.budget,
    required super.location,
    required super.type,
    required super.language,
  });

  factory PostDetailsModel.fromJson(Map<String, dynamic> json) {
    return PostDetailsModel(
      id: json['id_hash'] ?? '',
      title: json['title'] ?? 'No Title',
      description: json['description'] ?? 'No description available',
      budget: json['budget']?.toString() ?? 'N/A',
      location: json['locations']?.join(', ') ?? 'N/A',
      type: json['types']?.join(', ') ?? 'N/A',
      language: json['languages']?.join(', ') ?? 'N/A',
    );
  }
}
