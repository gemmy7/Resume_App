import 'package:flutter/material.dart';
import 'package:resume/core/utils/app_strings.dart';
import 'package:resume/features/home/data/developer_data.dart';
import 'package:resume/features/home/ui/widgets/contact_card.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key, required this.nextPage});

  final VoidCallback nextPage;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ThemeData theme = Theme.of(context);

    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // Empty Space
          SizedBox(
            height: size.height * 0.05,
          ),

          /// Bio
          Container(
            margin: EdgeInsets.all(size.height * .01),
            padding: EdgeInsets.symmetric(
              horizontal: size.width * .03,
            ),
            width: size.width,
            decoration: BoxDecoration(
              color: theme.cardColor,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.secondScreenBio,
                  style: theme.textTheme.bodyLarge,
                ),
                Text(
                  DeveloperData.devBio,
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),

          /// Hobbies
          Container(
            margin: EdgeInsets.all(size.height * .01),
            padding: EdgeInsets.symmetric(
              horizontal: size.width * .03,
              vertical: size.height * .01,
            ),
            width: size.width,
            decoration: BoxDecoration(
              color: theme.cardColor,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.secondScreenHobbies,
                  style: theme.textTheme.bodyLarge,
                ),
                SizedBox(
                  height: size.height * .01,
                ),
                SizedBox(
                    width: size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: List.generate(
                        DeveloperData.developerModel.hobbies.length,
                        (index) => Text(
                          "$index. ${DeveloperData.developerModel.hobbies[index]}",
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                    ))
              ],
            ),
          ),

          /// Contact
          Container(
            margin: EdgeInsets.all(size.height * .01),
            padding: EdgeInsets.symmetric(
              horizontal: size.width * .03,
              vertical: size.height * .01,
            ),
            width: size.width,
            decoration: BoxDecoration(
              color: theme.cardColor,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.secondScreenContact,
                  style: theme.textTheme.bodyLarge,
                ),
                SizedBox(
                  height: size.height * .01,
                ),
                ContactCard(
                    title: DeveloperData.developerModel.number,
                    icon: Icons.phone),
                ContactCard(
                    title: DeveloperData.developerModel.mail, icon: Icons.mail),
              ],
            ),
          ),

          /// Empty Space
          Expanded(child: Container()),

          /// Next Page
          IconButton(
              color: theme.canvasColor,
              onPressed: nextPage,
              icon: const Icon(Icons.arrow_upward_outlined)),

          /// Empty Space
          SizedBox(
            height: size.height * 0.05,
          ),
        ],
      ),
    );
  }
}
