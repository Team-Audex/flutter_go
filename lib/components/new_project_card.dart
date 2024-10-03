import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NewProjectCard extends StatelessWidget {
  final IconData icon;
  final String name;
  final Color iconColor;
  final Color textColor;
  final Color backgroundColor;
  final double borderRadius;

  const NewProjectCard({
    super.key,
    required this.icon,
    required this.name,
    required this.iconColor,
    required this.textColor,
    required this.backgroundColor,
    required this.borderRadius,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 0.25.sh,
      width: 0.9.sw,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(borderRadius),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 0.1.sw,
            color: iconColor,
          ),
          SizedBox(height: 0.02.sh),
          Text(
            name,
            style: TextStyle(
              fontSize: 0.04.sw,
              color: textColor,
            ),
          ),
        ],
      ),
    );
  }
}
