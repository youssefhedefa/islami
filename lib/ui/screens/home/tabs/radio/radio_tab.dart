import 'package:flutter/material.dart';
import 'package:islami_sun_c10/ui/utils/app_assets.dart';
import 'package:islami_sun_c10/ui/utils/app_colors.dart';
import 'package:islami_sun_c10/ui/utils/app_theme.dart';

class RadioTab extends StatelessWidget {
  const RadioTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          flex: 3,
          child: Image.asset(
            AppAssets.radioImage,
          ),
        ),
        const Expanded(
          flex: 2,
          child: Column(
            children: [
              Text(
                'إذاعة القرآن الكريم',
                style: AppTheme.semiBoldNumberTextStyle,
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Icon(
                      Icons.skip_previous,
                      size: 56,
                      color: AppColors.orange,
                    ),
                    Icon(
                      Icons.play_arrow_sharp,
                      size: 56,
                      color: AppColors.orange,
                    ),
                    Icon(
                      Icons.skip_next_sharp,
                      size: 56,
                      color: AppColors.orange,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
