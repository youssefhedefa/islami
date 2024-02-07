import 'package:flutter/material.dart';
import 'package:islami_sun_c10/ui/utils/app_assets.dart';
import 'package:islami_sun_c10/ui/utils/app_colors.dart';
import 'package:islami_sun_c10/ui/utils/app_theme.dart';

class SebhaTab extends StatefulWidget {
  const SebhaTab({super.key});

  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {

  int _counter = 1;
  List<String> tasbi7at = ['سبحان الله', 'الحمد لله', 'الله اكبر'];

  double _rotateAngle = 0.0;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Column(
        children: [
          Expanded(
            child: Transform.rotate(
              angle: _rotateAngle,
              child: Image.asset(
                AppAssets.seb7aImageLogo,
              ),
            ),
          ),
          Expanded(
            child: Column(
              children: [
                const Text(
                  'Tasbi7 Number',
                  style: AppTheme.semiBoldNumberTextStyle,
                ),
                const SizedBox(height: 26,),
                Container(
                  padding: const EdgeInsets.all(22),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(24),
                    color: AppColors.orange,
                  ),
                  child: Text(
                    _counter.toString(),
                    style: AppTheme.semiBoldNumberTextStyle,
                  ),
                ),
                const SizedBox(height: 22,),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      _rotateAngle += 0.3;
                      if (_counter == 99) {
                        _counter = 0;
                      } else {
                        _counter++;
                      }
                    });
                  },
                  child: Container(
                    width: 150,
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    decoration: BoxDecoration(
                      color: AppColors.orange,
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: Text(
                      textAlign: TextAlign.center,
                      tasbi7Text(),
                      style: AppTheme.regularTitleTextStyle
                          .copyWith(color: AppColors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String tasbi7Text() {
    if (_counter < 34) {
      return tasbi7at[0];
    } else if (_counter < 67) {
      return tasbi7at[1];
    } else {
      return tasbi7at[2];
    }
  }
}
