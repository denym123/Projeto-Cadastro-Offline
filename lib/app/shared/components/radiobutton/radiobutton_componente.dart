import 'package:cadastro_offline/app/shared/models/option/option_model.dart';
import 'package:flutter/material.dart';

class RadioButtonComponent extends StatelessWidget {
  const RadioButtonComponent(
      {super.key,
      required this.selectedValue,
      required this.value,
      required this.onChanged});

  final OptionModel? selectedValue;
  final OptionModel value;
  final Function(OptionModel) onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Radio(
          activeColor: Theme.of(context).primaryColor,
          value: value,
          groupValue: selectedValue,
          onChanged: (value) {
            onChanged(value!);
          },
        ),
        Text(
          value.label!,
          style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.bold, fontSize: 18),
        )
      ],
    );
  }
}
