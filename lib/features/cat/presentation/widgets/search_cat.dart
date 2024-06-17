import 'package:flutter/material.dart';

class SearchCat extends StatelessWidget {
  final void Function()? onPressed;
  final void Function(String)? onChanged;
  final String value;

  const SearchCat({
    super.key,
    this.onPressed,
    this.onChanged,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    final TextEditingController ctl = TextEditingController(
      text: value,
    );

    ctl.selection = TextSelection.fromPosition(
      TextPosition(offset: ctl.text.length),
    );

    return TextField(
      controller: ctl,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.search,
      onChanged: onChanged,
      onSubmitted: (value)=> onPressed!(),
      decoration: InputDecoration(
        hintText: 'search by breed',
        suffixIcon: IconButton(
          onPressed: onPressed,
          icon: const Icon(Icons.search),
        ),
      ),
    );
  }
}
