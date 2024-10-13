import 'package:flutter/material.dart';

class ItemScreenIcon extends StatelessWidget {
  const ItemScreenIcon({
    super.key,
    required this.icon,
    this.onTap,
    this.isEnabled = true,
  });

  final IconData icon;
  final VoidCallback? onTap;
  final bool isEnabled;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: isEnabled ? onTap : null,
      child: Opacity(
        opacity: isEnabled ? 1.0 : 0.4,
        child: Container(
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(45),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 8,
              ),
            ],
          ),
          child: Icon(
            icon,
            size: 22,
            color: Colors.black87.withOpacity(0.78),
          ),
        ),
      ),
    );
  }
}
