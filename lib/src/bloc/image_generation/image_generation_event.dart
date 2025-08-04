part of 'image_generation_bloc.dart';

sealed class ImageGenerationEvent extends Equatable {
  const ImageGenerationEvent();

  @override
  List<Object> get props => [];
}

class GenerateImageEvent extends ImageGenerationEvent {
  final String prompt;

  const GenerateImageEvent(this.prompt);

  @override
  List<Object> get props => [prompt];
}

