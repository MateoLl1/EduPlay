

import 'package:flutter/material.dart';


class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key, 
    required this.label, 
    required this.icon, 
    required this.focusNode,
    this.hintTxt = '',
    this.obscureText = false, 
    this.numberType = false, 
    this.onChanged, this.validator
  });
  
  final String label;
  final String? hintTxt;
  final FocusNode? focusNode;
  final IconData icon;
  final bool? obscureText;
  final bool? numberType;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

bool hideText = true;
class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
  final border = OutlineInputBorder(
    borderRadius: BorderRadius.circular(20)
  );

    return TextFormField(
      keyboardType: widget.numberType! ? TextInputType. number: TextInputType.emailAddress,
      focusNode: widget.focusNode,
      onChanged: widget.onChanged,
      onTapOutside: (event) => widget.focusNode!.unfocus(),
      obscureText: (widget.obscureText!) ? hideText : !hideText,
      validator: widget.validator,
      decoration: InputDecoration(
        border: border,
        isDense: true,
        prefixIcon: Icon(widget.icon),
        label: Text(widget.label),
        suffixIcon: (widget.obscureText!)
        ? IconButton(
          icon: hideText 
          ? const Icon(Icons.visibility_off)
          : const Icon(Icons.visibility),
          onPressed: (){
            hideText = !hideText;
            setState(() {
            });
          }, 
        )
        : null,
        hintText: widget.hintTxt
      ),
    );
  }
}