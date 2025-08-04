part of 'image_generation_bloc.dart';

sealed class ImageGenerationState extends Equatable {
  const ImageGenerationState();
  
  @override
  List<Object> get props => [];
}

final class ImageGenerationInitial extends ImageGenerationState {}

class ImageGeneratedState extends ImageGenerationState {
   final String imageUrl;

  const ImageGeneratedState(this.imageUrl);

  @override
  List<Object> get props => [imageUrl];
   
}

class ImageGenerationErrorState extends ImageGenerationState {
  final String errorMessage;
  const ImageGenerationErrorState(this.errorMessage);

  @override
  List<Object> get props => [errorMessage];
}