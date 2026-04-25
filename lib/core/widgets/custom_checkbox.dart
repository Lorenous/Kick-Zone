import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kick_zone/core/utils/app_images.dart';

class CustomCheckbox extends StatefulWidget {
  final bool value;
  final ValueChanged<bool?>? onChanged;
  final Color borderColor;
  final Color checkColor;
  final double borderWidth;
  final double size;

  const CustomCheckbox({
    super.key,
    required this.value,
    this.onChanged,
    this.borderColor = Colors.black,
    this.checkColor = Colors.black,
    this.borderWidth = 2,
    this.size = 14.0,
  });

  @override
  State<CustomCheckbox> createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  late bool _value;

  @override
  void initState() {
    super.initState();
    _value = widget.value;
  }

  @override
  void didUpdateWidget(CustomCheckbox oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.value != widget.value) {
      _value = widget.value;
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _value = !_value;
        });
        widget.onChanged?.call(_value);
      },
      child: Container(
        width: widget.size,
        height: widget.size,
        decoration: BoxDecoration(
          border: Border.all(
            color: widget.borderColor,
            width: widget.borderWidth,
          ),
          color: _value ? Colors.transparent : Colors.transparent,
        ),
        child: _value ? SvgPicture.asset(AppImages.imagesCheck) : null,
      ),
    );
  }
}
