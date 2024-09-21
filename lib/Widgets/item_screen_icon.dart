import 'package:flutter/material.dart';

class ItemScreenIcon extends StatelessWidget {
  const ItemScreenIcon({super.key, this.onTap, required this.icon});
  final void Function()? onTap;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: onTap,
        icon: Container(
          padding: const EdgeInsets.all(4),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(45)),
          child: Icon(
            icon,
            color: Colors.black87.withOpacity(0.78),
          ),
        ));
  }
}
