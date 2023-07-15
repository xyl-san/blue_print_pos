import 'receipt_text_style.dart';
import 'receipt_text_style_type.dart';

class ReceiptTextLeftRight {
  ReceiptTextLeftRight(
    this.leftText,
    this.rightText, {
    this.leftTextStyle = const ReceiptTextStyle(
      type: ReceiptTextStyleType.normal,
      useSpan: true,
    ),
    this.rightTextStyle = const ReceiptTextStyle(
      type: ReceiptTextStyleType.normal,
      useSpan: true,
    ),
  });

  final String leftText;
  final String rightText;
  final ReceiptTextStyle leftTextStyle;
  final ReceiptTextStyle rightTextStyle;

  String get html => '''
    <p class="full-width inline-block">
      <${leftTextStyle.textStyleHTML} class="left" style="font-size:${leftTextStyle.textSizeHtml}">$leftText</${leftTextStyle.textStyleHTML}>
      <${rightTextStyle.textStyleHTML} class="right" style="font-size:${rightTextStyle.textSizeHtml}">$rightText</${rightTextStyle.textStyleHTML}>
    </p>
  ''';
}
