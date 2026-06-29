import "package:flutter/material.dart";
import "package:flutter/rendering.dart";
import "package:snapitai/global_widgets/AppChip.dart";
import "package:snapitai/global_widgets/app_card.dart";
import "package:snapitai/utils/app_colors.dart";

class RecentAiClips extends StatelessWidget {
  const RecentAiClips({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  "Recent AI Clips",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: AppColors.secondaryText,
                  ),
                ),
              ),
              GestureDetector(
                child: Text(
                  "View Library",
                  style: TextStyle(fontSize: 12, color: AppColors.lightPrimary),
                ),
              ),
            ],
          ),
          SizedBox(height: 20),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (context, index) {
                return Padding(
                  padding: EdgeInsets.only(right: 25),
                  child: AppCard(
                    height: 500,
                    width: 298,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(15),
                            topLeft: Radius.circular(15),
                          ),
                          child: Container(
                            height: 120,
                            width: MediaQuery.of(context).size.width,
                            color: Colors.green,
                            padding: EdgeInsets.all(10),
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Row(
                                children: [
                                  AppChip(
                                    backgroundColor: AppColors.lightPrimary,
                                    foregroundColor: AppColors.primary,
                                    height: 30,
                                    isUsingPadding: false,
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 10,
                                      ),
                                      child: Text(
                                        "Epic Play",
                                        style: TextStyle(fontSize: 10),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Insane Clutch Meme 1v3",
                                style: TextTheme.of(context).titleMedium
                                    ?.copyWith(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                    ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "2 minute ago",
                                    style: TextTheme.of(context).labelMedium
                                        ?.copyWith(
                                          color: AppColors.greyishText,
                                        ),
                                  ),
                                  SizedBox(width: 15),
                                  Text(
                                    "9.2 Viral",
                                    style: TextTheme.of(context).labelMedium
                                        ?.copyWith(color: AppColors.secondary),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
