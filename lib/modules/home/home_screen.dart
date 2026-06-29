import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:snapitai/modules/home/widgets/active_analysis_widget.dart';
import 'package:snapitai/modules/home/widgets/engine_status.dart';
import 'package:snapitai/utils/app_colors.dart';

class HomeScreen extends GetView {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.neutral,
      appBar: AppBar(
        backgroundColor: AppColors.neutral,
        shadowColor: Colors.white.withAlpha(150),
        elevation: 5,
        title: Text(
          "SnapIt",
          style: TextStyle(
            color: AppColors.lightPrimary,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          CircleAvatar(backgroundColor: AppColors.secondary),
          SizedBox(width: 20),
        ],
      ),
      body: Container(
        padding: EdgeInsets.all(30),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Automate Your Clips",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 45,
                ),
              ),
              SizedBox(height: 15),
              Text(
                "Paste your live stream link and let our AI hunt for viral moments in real-time.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                margin: EdgeInsets.only(top: 25),
                decoration: BoxDecoration(
                  color: Color(0xff222a3d),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xffF6EDFF),
                      blurRadius: 7,
                      spreadRadius: 0,
                      offset: Offset(0, 0),
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                          ),
                          hint: Text(
                            "Youtube Livestream URL",
                            style: TextStyle(color: Color(0xff5c5c63)),
                          ),
                        ),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: WidgetStateColor.resolveWith(
                          (currentState) => AppColors.primary,
                        ),
                        foregroundColor: WidgetStateColor.resolveWith(
                          (currentState) => AppColors.neutral,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(13)
                        )
                      ),
                      child: Text("Analyze"),
                    ),
                    SizedBox(width: 12),
                  ],
                ),
              ),
              SizedBox(height: 25,),
              ActiveAnalysisWidget(),
              SizedBox(height: 25,),
              EngineStatus()
            ],
          ),
        ),
      ),
    );
  }
}
