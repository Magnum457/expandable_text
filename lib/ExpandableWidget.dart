import 'package:flutter/material.dart';
import 'SeeMoreLessWidget.dart';

class ExpandableWidget extends StatelessWidget {
  final String? content;

  ExpandableWidget({
    super.key,
    required this.content,
  });

  ValueNotifier<bool> _expanded = ValueNotifier(false);
  final int _maxLinesToShow = 1;

  @override
  Widget build(BuildContext context) {
    final TextSpan textSpan = TextSpan(
      text: content ?? "",
      style: const TextStyle(
        fontStyle: FontStyle.normal,
        color: Colors.black,
        fontSize: 11.0,
        fontWeight: FontWeight.w400,
      ),
    );

    final TextPainter textPainter = TextPainter(
      text: textSpan,
      maxLines: _maxLinesToShow,
      textDirection: TextDirection.ltr,
    );

    textPainter.layout(maxWidth: MediaQuery.of(context).size.width);

    final int numberOfLines = textPainter.computeLineMetrics().length;

    return ValueListenableBuilder(
      valueListenable: _expanded,
      builder: (context, values, _) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
              if (!_expanded.value && numberOfLines >= _maxLinesToShow) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      content ?? "",
                      maxLines: _maxLinesToShow,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                        fontStyle: FontStyle.normal,
                        color: Colors.black,
                        fontSize: 11.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SeeMoreLessWidget(
                      textData: 'See More',
                      type: 1,
                      section: 1,
                      onSeeMoreLessTap: () {
                        _expanded.value = true;
                      },
                    ),
                  ],
                );
              } else {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      content ?? "",
                      style: const TextStyle(
                        fontStyle: FontStyle.normal,
                        color: Colors.black,
                        fontSize: 11.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    if (_expanded.value && numberOfLines >= _maxLinesToShow)
                      SeeMoreLessWidget(
                        textData: 'See Less',
                        type: 2,
                        section: 1,
                        onSeeMoreLessTap: () {
                          _expanded.value = false;
                        },
                      ),
                  ],
                );
              }
            }),
          ],
        );
      },
    );
  }
}
