import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:stability_image_generation/stability_image_generation.dart';

part 'image_generation_event.dart';
part 'image_generation_state.dart';

class ImageGenerationBloc extends Bloc<ImageGenerationEvent, ImageGenerationState> {
 final StabilityAI _ai;
 final String _apiKey = 'sk-lsVcavlIgaqRotLUfUrSTVqsbLxOeneE6faX7eGiROCfME9x';
  ImageGenerationBloc(this._ai) : super(ImageGenerationInitial()) {
    on<ImageGenerationEvent>((event, emit) async{
    
    if (event is GenerateImageEvent) {
      try {
        final image = await _ai.generateImage(
          prompt: event.prompt, 
          apiKey: _apiKey,
          imageAIStyle: ImageAIStyle.digitalPainting,
          );
          emit(ImageGeneratedState(image.toString()));
      } catch (e) {
       emit(ImageGenerationErrorState(e.toString()));
      }
    }
    
    });
  }
}
