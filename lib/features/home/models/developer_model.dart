class DeveloperModel {
  final String name;
  final String number;
  final String mail;
  final String bio;
  final List<SkillsData> skillsAndProgress;
  final List<String> hobbies;

  DeveloperModel(
      {required this.name,
      required this.number,
      required this.mail,
      required this.bio,
      required this.skillsAndProgress,
      required this.hobbies});
}

class SkillsData {
  final String name;
  final double progress;

  SkillsData({required this.name, required this.progress});
}
