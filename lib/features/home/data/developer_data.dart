import 'package:resume/features/home/models/developer_model.dart';

class DeveloperData {
  DeveloperData._();
  static DeveloperModel developerModel = DeveloperModel(
    name: 'Jimmy',
    number: '201159362471',
    mail: 'oohhpp9080@gmail.com',
    bio: devBio,
    skillsAndProgress: <SkillsData>[
      SkillsData(
        name: 'Software Engineer',
        progress: 0.7,
      ),
      SkillsData(
        name: 'Mobile App Developer',
        progress: 0.7,
      ),
      SkillsData(
        name: 'Flutter Developer',
        progress: 0.8,
      ),
    ],
    hobbies: <String>["Learning about Development", "playing football"],
  );
  static const String devBio = """
I'm Alaa, a motivated software engineering student with a passion for mobile development using Dart and Flutter 📱. I enjoy sharing programming knowledge on social media 🌐. Let's explore mobile development together! 🚀"
""";
}
