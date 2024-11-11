import 'package:flutter/material.dart';
import 'package:tech_media/res/color.dart';

class RoundButton extends StatelessWidget {
  final String title;
  final VoidCallback onPress;
  final Color color, textColor;
  final bool loading;

  const RoundButton({
    super.key,
    required this.title,
    required this.onPress,
    this.textColor = AppColors.whiteColor,
    this.color = AppColors.primaryColor,
    this.loading = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: loading ? null : onPress,
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Center(
          child: loading
              ? const CircularProgressIndicator(color: AppColors.whiteColor)
              : Text(
                  title,
                  style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        fontSize: 16,
                        color: textColor,
                      ),
                ),
        ),
      ),
    );
  }
}
