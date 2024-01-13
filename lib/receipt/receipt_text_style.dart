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
        return '20px'; // Adjust the pixel value as needed
      case ReceiptTextSizeType.smallMedium:
        return '22px'; // Adjust the pixel value as needed
      case ReceiptTextSizeType.medium:
        return '24px'; // Adjust the pixel value as needed
      case ReceiptTextSizeType.mediumLarge:
        return '26px'; // Adjust the pixel value as needed
      case ReceiptTextSizeType.large:
        return '28px'; // Adjust the pixel value as needed
      case ReceiptTextSizeType.extraLarge:
        return '30px'; // Adjust the pixel value as needed
      case ReceiptTextSizeType.ultraLarge:
        return '32px'; // Adjust the pixel value as needed
      case ReceiptTextSizeType.title:
        return '40px'; // Adjust the pixel value as needed
      default:
        return '20px'; // Adjust the pixel value as needed
    }
  }
  // String get textSizeHtml {
  //   switch (size) {
  //     case ReceiptTextSizeType.small:
  //       return 'text-small';
  //     case ReceiptTextSizeType.medium:
  //       return 'text-medium';
  //     case ReceiptTextSizeType.large:
  //       return 'text-large';
  //     case ReceiptTextSizeType.extraLarge:
  //       return 'text-extra-large';
  //     default:
  //       return 'text-medium';
  //   }
  // }
}
