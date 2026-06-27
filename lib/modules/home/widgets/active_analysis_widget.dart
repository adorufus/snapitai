import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:snapitai/global_widgets/AppChip.dart';
import 'package:snapitai/global_widgets/app_card.dart';
import 'package:snapitai/modules/home/controllers/home_controller.dart';
import 'package:snapitai/utils/app_colors.dart';

class ActiveAnalysisWidget extends StatefulWidget {
  const ActiveAnalysisWidget({super.key});

  @override
  State<ActiveAnalysisWidget> createState() => _ActiveAnalysisWidgetState();
}

class _ActiveAnalysisWidgetState extends State<ActiveAnalysisWidget> {
  final HomeController homeController = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return AppCard(
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                child: Text(
                  "Active Analysis: Video_01",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              AppChip(
                chipText: "Gaming",
                backgroundColor: AppColors.neutral,
                foregroundColor: AppColors.lightPrimary,
                width: 100,
              ),
              SizedBox(width: 5),
              AppChip(
                chipText: "1080p",
                backgroundColor: AppColors.lightPrimary,
                foregroundColor: AppColors.neutral,
              ),
            ],
          ),
          SizedBox(height: 25),
          Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14),
              color: Colors.green,
            ),
          ),

          /// Video Holder
          SizedBox(height: 20),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Processed",
                    style: TextStyle(
                      color: AppColors.greyishText,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "42:15",
                    style: TextStyle(
                      color: AppColors.secondaryText,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Moments",
                    style: TextStyle(
                      color: AppColors.greyishText,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "12 Found",
                    style: TextStyle(
                      color: AppColors.lightPrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 24,),
          Row(
            children: [
              Expanded(
                child: AppChip(
                  borderRadius: 15,
                  height: 80,
                  backgroundColor: AppColors.cardBg,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.settings, color: AppColors.secondaryText),
                      SizedBox(width: 5,),
                      Text("Intensity", style: TextStyle(color: AppColors.secondaryText),),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 15,),
              Expanded(
                child: AppChip(
                  borderRadius: 15,
                  height: 80,
                  backgroundColor: AppColors.cardBg,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.cut, color: AppColors.secondaryText),
                      SizedBox(width: 5,),
                      Text("Extract Now", style: TextStyle(color: AppColors.secondaryText),),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
