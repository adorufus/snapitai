import 'package:flutter/widgets.dart';
import 'package:snapitai/global_widgets/app_card.dart';
import 'package:snapitai/utils/app_colors.dart';

class EngineStatus extends StatelessWidget {
  const EngineStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return AppCard(
      padding: 15,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "AI ENGINE STATUS",
            style: TextStyle(color: AppColors.greyishText, fontSize: 20),
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Text(
                "75%",
                style: TextStyle(color: AppColors.lightPrimary, fontSize: 20),
              ),
              SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Neural Engine v2.4",
                    style: TextStyle(
                      color: AppColors.secondaryText,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "Optimized for youtube",
                    style: TextStyle(color: AppColors.lightPrimary),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
