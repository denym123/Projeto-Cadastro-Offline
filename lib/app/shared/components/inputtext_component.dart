import 'package:flutter/material.dart';

class InputTextComponent extends StatefulWidget {
  const InputTextComponent(
      {super.key,
      required this.value,
      this.hintText,
      required this.onChanged,
      required this.focusNode,
      this.onSubmitted,
      this.hasNextFocus,
      required this.label,
      this.isPasswordInput});

  final String label;
  final bool? isPasswordInput;
  final String? value;
  final String? hintText;
  final Function(String value) onChanged;
  final Function(String value)? onSubmitted;
  final FocusNode focusNode;
  final bool? hasNextFocus;

  @override
  State<InputTextComponent> createState() => _InputTextComponentState();
}

class _InputTextComponentState extends State<InputTextComponent> {
  TextEditingController? textEditingController;

  final border = OutlineInputBorder(
    borderRadius: BorderRadius.circular(18),
    borderSide: const BorderSide(color: Color(0xffE4E2E2)),
  );

  @override
  void initState() {
    textEditingController = TextEditingController(text: widget.value);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (widget.value != null &&
        widget.value!.isNotEmpty &&
        widget.value != textEditingController!.text) {
      textEditingController = TextEditingController(text: widget.value);
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.label,
          style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 18),
        ),
        TextFormField(
          onTapOutside: (event) => widget.focusNode.unfocus(),
          obscureText: widget.isPasswordInput ?? false,
          textInputAction: widget.hasNextFocus ?? false
              ? TextInputAction.next
              : TextInputAction.done,
          onFieldSubmitted: widget.onSubmitted,
          focusNode: widget.focusNode,
          onChanged: widget.onChanged,
          controller: textEditingController,
          decoration: InputDecoration(
            suffixIcon: widget.isPasswordInput ?? false ? IconButton(
              onPressed: () {},
              icon: const Icon(Icons.abc),
            ) : null,
            filled: true,
            border: border,
            hintText: widget.hintText,
            focusedBorder: border,
            disabledBorder: border,
            enabledBorder: border,
            errorBorder: border,
          ),
        ),
      ],
    );
  }


}
