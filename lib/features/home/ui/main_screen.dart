import 'package:flutter/material.dart';
import 'package:resume/core/utils/app_assets.dart';
import 'package:resume/core/utils/app_colors.dart';
import 'package:resume/features/home/data/developer_data.dart';
import 'package:resume/features/home/ui/widgets/skills_box.dart';
import 'package:resume/features/home/ui/widgets/skills_progress.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key, required this.nextPage});
  final VoidCallback nextPage;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ThemeData themeData = Theme.of(context);
    return Column(
      children: [
        SizedBox(
          height: size.height * .03,
        ),
        Container(
          padding: EdgeInsets.all(size.height * .02),
          decoration: BoxDecoration(
            color: themeData.cardColor,
            shape: BoxShape.circle,
          ),
          child: CircleAvatar(
            radius: size.height * .15,
            backgroundColor: AppColors.appPrimaryColor,
            backgroundImage: const AssetImage(AppAssets.profileImage),
          ),
        ),
        SizedBox(
          height: size.height * .01,
        ),
        Text(
          DeveloperData.developerModel.name,
          style: themeData.textTheme.displayLarge,
        ),
        SizedBox(
          height: size.height * .01,
        ),
        Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          alignment: WrapAlignment.center,
          spacing: size.width * .04,
          runSpacing: size.width * .02,
          children: List.generate(
            DeveloperData.developerModel.skillsAndProgress.length,
            (index) => SkillsBox(
              title: DeveloperData.developerModel.skillsAndProgress[index].name,
            ),
          ),
        ),
        SizedBox(
          height: size.height * 0.03,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: List.generate(
            DeveloperData.developerModel.skillsAndProgress.length,
            (index) => SkillsProgress(
              progress: DeveloperData
                  .developerModel.skillsAndProgress[index].progress,
              title: DeveloperData.developerModel.skillsAndProgress[index].name,
            ),
          ),
        ),
        // Empty Space
        Expanded(child: Container()),
        IconButton(
          color: themeData.canvasColor,
          onPressed: nextPage,
          icon: const Icon(Icons.arrow_downward_outlined),
        ),

        /// Empty Space
        SizedBox(
          height: size.height * 0.05,
        ),
      ],
    );
  }
}
