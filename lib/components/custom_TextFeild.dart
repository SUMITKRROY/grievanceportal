import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grievanceportal/config/theamdata.dart';



class CustomTextField extends StatefulWidget {
  final String? initialValue;
  final void Function(String) onChanged;
  final String label;
  final String validatorLabel;
  final List<TextInputFormatter>? inputFormatters;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool obscured;
  final bool validator;
  final dynamic suffixIcon;
  final dynamic maxline;

  const CustomTextField(
      {super.key,
        required this.label,
        this.inputFormatters,
        required this.validatorLabel,
        this.initialValue,
        required this.onChanged,
        this.controller,
        this.obscured = false,
        this.suffixIcon, this.keyboardType, this.maxline, required this.validator});

  @override
  @override
  State<CustomTextField> createState() {
    return _CustomTextField();
  }
}

class _CustomTextField extends State<CustomTextField> {
  late final TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
    _controller.text = widget.initialValue ?? '';
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: widget.maxline,
      style: const TextStyle( fontSize: 18,color: ColorsData.darkGrayColor),
      inputFormatters: widget.inputFormatters,
      validator: (val) {
        // Check if widget.validator is not null
        if (widget.validator != false) {
          // If the value is empty, return an error message
          if (val == '') return 'Enter a valid ${widget.validatorLabel}';
        }
        // If widget.validator is null, return null indicating no error
        return null;
      },

      controller: widget.controller ?? _controller,
      onChanged: widget.onChanged,
      keyboardType: widget.keyboardType,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(16),
          suffixIcon: widget.suffixIcon,
          hintText:  widget.label,
          filled: true),
      obscureText: widget.obscured,
    );
  }
}