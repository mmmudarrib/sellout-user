import 'package:flutter/material.dart';

// ignore_for_file: constant_identifier_names
enum GenderTypes { MALE, FEMALE, OTHERS, NOTAVAIABLE }

class GenderSectionButton extends StatefulWidget {
  const GenderSectionButton({required this.onChanged, Key? key})
      : super(key: key);
  final void Function(GenderTypes?)? onChanged;

  @override
  _GenderSectionButtonState createState() => _GenderSectionButtonState();
}

class _GenderSectionButtonState extends State<GenderSectionButton> {
  GenderTypes _gender = GenderTypes.MALE;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        InkWell(
          onTap: () {
            setState(() {
              _gender = GenderTypes.MALE;
            });
            widget.onChanged!(GenderTypes.MALE);
          },
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Radio<GenderTypes>(
                value: GenderTypes.MALE,
                groupValue: _gender,
                onChanged: (GenderTypes? value) {
                  setState(() {
                    _gender = value!;
                  });
                  widget.onChanged!(value);
                },
              ),
              const Text('Male'),
            ],
          ),
        ),
        InkWell(
          onTap: () {
            setState(() {
              _gender = GenderTypes.FEMALE;
            });
            widget.onChanged!(GenderTypes.FEMALE);
          },
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Radio<GenderTypes>(
                value: GenderTypes.FEMALE,
                groupValue: _gender,
                onChanged: (GenderTypes? value) {
                  setState(() {
                    _gender = value!;
                  });
                  widget.onChanged!(value);
                },
              ),
              const Text('Female'),
            ],
          ),
        ),
        InkWell(
          onTap: () {
            setState(() {
              _gender = GenderTypes.OTHERS;
            });
            widget.onChanged!(GenderTypes.OTHERS);
          },
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Radio<GenderTypes>(
                value: GenderTypes.OTHERS,
                groupValue: _gender,
                onChanged: (GenderTypes? value) {
                  setState(() {
                    _gender = value!;
                  });
                  widget.onChanged!(value);
                },
              ),
              const Text('Others'),
            ],
          ),
        ),
      ],
    );
  }
}
