class MindfulExercise {
  final String categoty;
  final String name;
  final String description;
  final List<String> instructions;
  final int duration;
  final String instructionUrl;
  final String imagePath;

  MindfulExercise({
    required this.categoty,
    required this.name,
    required this.description,
    required this.instructions,
    required this.duration,
    required this.instructionUrl,
    required this.imagePath,
  });

  //method to convert json data into a mindfulexercise
  factory MindfulExercise.fromJson(Map<String, dynamic> json) {
    return MindfulExercise(
      categoty: json['category'],
      name: json['name'],
      description: json['description'],
      instructions: List<String>.from(json['instructions']),
      duration: json['duration'],
      instructionUrl: json['instructionUrl'],
      imagePath: json['imagePath'],
    );
  }

  //convert mindful exercise to json
  Map<String, dynamic> toJson() {
    return {
      'category': categoty,
      'name': name,
      'description': description,
      'instructions': instructions,
      'duration': duration,
      'instructionUrl': instructionUrl,
      'imagePath': imagePath,
    };
  }
}
