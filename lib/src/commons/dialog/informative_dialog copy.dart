import 'package:flutter/material.dart';

class InformativeDialog extends StatelessWidget {
  final Icon? icon;
  final Widget? title;
  final Widget? message;
  final Widget? positiveButton;
  final Widget? middleButton;
  final Widget? negativeButton;

  const InformativeDialog({
    Key? key,
    this.icon,
    this.title,
    this.message,
    this.positiveButton,
    this.middleButton,
    this.negativeButton,
  }) : super(key: key);

  Future<T?> showBottomSheetDialog<T>(BuildContext context) =>
      showModalBottomSheet<T>(context: context, builder: (_) => this);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minHeight: MediaQuery.of(context).size.height * 0.3,
        maxHeight: MediaQuery.of(context).size.height * 0.45,
      ),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.0),
          topRight: Radius.circular(10.0),
        ),
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null)
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 10.0),
                child: Center(
                  child: icon,
                ),
              ),
            ),
          Expanded(
            child: Center(
              child: title,
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: message,
              ),
            ),
          ),
          if (positiveButton != null)
            Flexible(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: positiveButton,
                ),
              ),
            ),
          if (middleButton != null)
            Flexible(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: middleButton,
                ),
              ),
            ),
          if (negativeButton != null)
            Flexible(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: negativeButton,
                ),
              ),
            )
        ],
      ),
    );
  }
}
