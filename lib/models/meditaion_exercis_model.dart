class MeditaionExercis {
  final String category;
  final String name;
  final String description;
  final int duration;
  final String audioUrl;
  final String videoUrl;

  MeditaionExercis({
    required this.category,
    required this.name,
    required this.description,
    required this.duration,
    required this.audioUrl,
    required this.videoUrl,
  });

  factory MeditaionExercis.fromJson(Map<String, dynamic> json) {
    return MeditaionExercis(
      category: json['category'],
      name: json['name'],
      description: json['description'],
      duration: json['duration'],
      audioUrl: json['audioUrl'],
      videoUrl: json['videoUrl'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'category': category,
      'name': name,
      'duration': duration,
      'description': description,
      'audioUrl': audioUrl,
      'videoUrl': videoUrl,
    };
  }
}
