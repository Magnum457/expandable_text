import 'package:flutter/material.dart';

class SeeMoreLessWidget extends StatelessWidget {
  final String? textData;
  final int? type;
  final Function? onSeeMoreLessTap;
  final int? section;

  const SeeMoreLessWidget({
    super.key,
    required this.textData,
    required this.type,
    required this.onSeeMoreLessTap,
    required this.section,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: const EdgeInsets.only(top: 12.0),
        child: InkWell(
          onTap: () {
            if (onSeeMoreLessTap != null) {
              onSeeMoreLessTap!();
            }
          },
          child: Text.rich(
            softWrap: true,
            style: const TextStyle(
              fontStyle: FontStyle.normal,
              color: Colors.blue,
              fontSize: 13.0,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.start,
            TextSpan(
              text: "",
              children: [
                TextSpan(
                  text: textData ?? "",
                  style: const TextStyle(
                    fontStyle: FontStyle.normal,
                    color: Colors.blue,
                    fontSize: 13.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const WidgetSpan(
                  child: SizedBox(
                    width: 3.0,
                  ),
                ),
                WidgetSpan(
                  child: Icon(
                    (type == 1)
                        ? Icons.keyboard_arrow_down
                        : Icons.keyboard_arrow_up,
                    color: Colors.blue,
                    size: 17.5,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
