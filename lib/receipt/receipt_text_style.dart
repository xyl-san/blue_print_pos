import 'receipt_text_size_type.dart';
import 'receipt_text_style_type.dart';

class ReceiptTextStyle {
  const ReceiptTextStyle({
    this.type = ReceiptTextStyleType.normal,
    this.size = ReceiptTextSizeType.medium,
    this.useSpan = false,
  });

  /// [type] to define weight of text
  /// [ReceiptTextStyleType.normal] for normal weight
  /// [ReceiptTextStyleType.bold] for more weight than normal type
  final ReceiptTextStyleType type;

  /// [size] define size of text,
  final ReceiptTextSizeType size;

  /// [useSpan] used only for condition left right text
  final bool useSpan;

  /// Tag p for normal text, b for bold text and span for left right text
  /// This getter to get tag of text used
  String get textStyleHTML {
    if (useSpan) {
      return type == ReceiptTextStyleType.normal ? 'span' : 'b';
    }
    return type == ReceiptTextStyleType.normal ? 'p' : 'b';
  }

  /// This getter to get style of alignment text
  String get textSizeHtml {
    switch (size) {
      case ReceiptTextSizeType.small:
        return '12px'; // Adjust the pixel value as needed
      case ReceiptTextSizeType.medium:
        return '16px'; // Adjust the pixel value as needed
      case ReceiptTextSizeType.semiLarge:
        return '18px'; // Adjust the pixel value as needed
      case ReceiptTextSizeType.large:
        return '20px'; // Adjust the pixel value as needed
      case ReceiptTextSizeType.extraLarge:
        return '24px'; // Adjust the pixel value as needed
      default:
        return '16px'; // Adjust the pixel value as needed
    }
  }
}
