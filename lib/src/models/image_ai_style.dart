

enum ImageAIStyle {
  digitalPainting,
  sketch,
  photoRealistic,
  abstractArt,
  oilPainting,
  watercolor,
}

extension ImageAIStyleExtension on ImageAIStyle {
  String get styleName {
    switch (this) {
      case ImageAIStyle.digitalPainting:
        return 'Digital Painting';
      case ImageAIStyle.photoRealistic:
        return 'Photo Realistic';
      case ImageAIStyle.sketch:
        return 'Sketch';
      case ImageAIStyle.abstractArt:
        return 'abstractArt';
      case ImageAIStyle.oilPainting:
        return 'oilPainting';
      case ImageAIStyle.watercolor:
        return 'watercolor';
      default:
        return 'Digital Painting';
    }
  }
}

