import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal.shade800,
        title: const Text("LiteAi"),
        centerTitle: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: IconButton.filled(
              color: Colors.white,
              hoverColor: Colors.teal.shade100.withOpacity(0.2),
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(
                  Colors.teal.shade200.withOpacity(0.5),
                ),
              ),
              onPressed: () {},
              splashColor: Colors.teal.shade200.withOpacity(0.2),
              icon: const Icon(
                Icons.share,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return const Column(
            children: [
              BodyArea(),
              Gap(5),
              BottomArea(),
            ],
          );
        },
      ),
    );
  }
}

class BodyArea extends StatelessWidget {
  const BodyArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 9,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Container(
          color: Colors.grey.shade900,
          child: const Column(
            children: [
              Gap(20),
              CustomContentArea(
                isTrue: false,
              ),
              Gap(20),
              CustomContentArea(
                isTrue: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomContentArea extends StatelessWidget {
  final bool isTrue;
  const CustomContentArea({
    super.key,
    required this.isTrue,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: isTrue ? 9 : 1,
          child: isTrue
              ? const ContentBox(
                  content: "Hello Ai! How Are you today?",
                )
              : Container(
                  color: Colors.grey.shade900,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.person),
                    ),
                  ),
                ),
        ),
        const Gap(10),
        Expanded(
          flex: isTrue ? 1 : 9,
          child: isTrue
              ? Container(
                  color: Colors.grey.shade900,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.green,
                      shape: BoxShape.circle,
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(Icons.person),
                    ),
                  ),
                )
              : const ContentBox(
                  content: "Hello Ai! How Are you today?",
                ),
        ),
      ],
    );
  }
}

class ContentBox extends StatelessWidget {
  final String content;
  const ContentBox({
    super.key,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: 1,
      readOnly: true,
      cursorColor: Colors.grey.shade400,
      decoration: InputDecoration(
        hintText: content,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade500),
          borderRadius: BorderRadius.circular(8.0),
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),
        ),
      ),
    );
  }
}

class LeftTextField extends StatelessWidget {
  const LeftTextField({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.grey.shade900,
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.green,
                shape: BoxShape.circle,
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.person),
              ),
            ),
          ),
        ),
        const Gap(10),
        Expanded(
          flex: 8,
          child: TextField(
            maxLines: 1,
            readOnly: true,
            cursorColor: Colors.grey.shade400,
            decoration: InputDecoration(
              hintText: "Hello User! how can i help you?",
              focusColor: Colors.amber,
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade500),
                borderRadius: BorderRadius.circular(8.0),
              ),
              border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(8.0),
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class BottomArea extends StatelessWidget {
  const BottomArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Row(
          children: [
            Expanded(
              flex: 8,
              child: Container(
                color: Colors.grey.shade900,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: TextField(
                    cursorColor: Colors.grey.shade400,
                    decoration: InputDecoration(
                      focusColor: Colors.amber,
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey.shade500),
                        borderRadius: BorderRadius.circular(100),
                      ),
                      border: const OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(100),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const Gap(10),
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.grey.shade900,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.teal.shade800,
                    shape: BoxShape.circle,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Icon(Icons.arrow_forward_ios),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}







// import 'dart:io';

// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:gap/gap.dart';
// import 'package:lite_ai/src/bloc/image_generation/ImageBloc.dart';
// import 'package:lite_ai/src/bloc/image_generation/ImageState.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:permission_handler/permission_handler.dart';
// import 'package:http/http.dart' as http;
// import 'package:stability_image_generation/stability_image_generation.dart';

// import '../../../bloc/image_generation/ImageEvent.dart';

// class HomeScreen extends StatefulWidget {
//   HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//     // Controller for the input field
//   final TextEditingController _queryController = TextEditingController();
//   // Instance of StabilityAI for image generation
//   final StabilityAI _ai = StabilityAI();
//   // API key for the AI service
//   final String apiKey = 'sk-72lPjy2SI8TISr8clfWohG9bri9TTGMgoXbudnIlR4hZQTXa';
//   // Set the style for the generated image
//   final ImageAIStyle imageAIStyle = ImageAIStyle.digitalPainting;
//   // Flag to check if images have been generated
//   bool isItems = false;
  
//   // Function to generate an image based on the input query
//   Future<Uint8List> _generate(String query) async {
//     Uint8List image = await _ai.generateImage(
//       apiKey: apiKey, // API key
//       imageAIStyle: imageAIStyle, // Style for the image
//       prompt: query, // The text prompt input by the user
//     );
//     return image; // Return the generated image as bytes
//   }

//   // Dispose method to clean up the controller when the widget is removed from the tree
//   @override
//   void dispose() {
//     _queryController.dispose(); // Dispose of the controller
//     super.dispose(); // Call the super class dispose method
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.teal.shade300,
//         title: const Text("LiteAi"),
//         centerTitle: false,
//         actions: [
//           Padding(
//             padding: const EdgeInsets.only(right: 8.0),
//             child: IconButton.filled(
//               color: Colors.white,
//               hoverColor: Colors.teal.shade100.withOpacity(0.2),
//               style: ButtonStyle(
//                 backgroundColor: WidgetStatePropertyAll(
//                   Colors.teal.shade200.withOpacity(0.5),
//                 ),
//               ),
//               onPressed: () {},
//               splashColor: Colors.teal.shade200.withOpacity(0.2),
//               icon: const Icon(
//                 Icons.share,
//                 color: Colors.white,
//               ),
//             ),
//           ),
//         ],
//       ),
//       body: Column(
//         children: [
//           const Gap(10),
//           const Padding(
//             padding: EdgeInsets.symmetric(horizontal: 16.0),
//             child: Text(
//               "Share Your Concept for a Unique Creation",
//               style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.symmetric(
//                 horizontal: 16.0, vertical: 20.0),
//             child: TextFormField(
//               controller: _queryController,
//               maxLines: 5,
//               decoration: InputDecoration(
//                 focusColor: Colors.teal,
//                 focusedBorder: OutlineInputBorder(
//                     borderSide: BorderSide(color: Colors.teal.shade300)),
//                 hintText: 'Type here',
//                 filled: true,
//                 fillColor: Colors.white,
//                 enabledBorder: OutlineInputBorder(
//                   borderSide: BorderSide(
//                     color: Colors.teal.shade300,
//                   ),
//                 ),
//               ),
//             ),
//           ),
//          Padding(
//               padding: const EdgeInsets.all(20),
//               child: isItems // Check if images have been generated
//                   ? FutureBuilder<Uint8List>(
//                       future: _generate(
//                           _queryController.text), // Call the generate function
//                       builder: (context, snapshot) {
//                         if (snapshot.connectionState ==
//                             ConnectionState.waiting) {
//                           // Show loading indicator while waiting for the image
//                           return const Center(
//                             child: CircularProgressIndicator(),
//                           );
//                         } else if (snapshot.hasData) {
//                           // If data is received, display the generated image
//                           return ClipRRect(
//                             borderRadius: BorderRadius.circular(10),
//                             child: Image.memory(snapshot
//                                 .data!), // Display the image from memory
//                           );
//                         } else {
//                           return Container(
//                             child: Text("No Data"),
//                           ); // Return an empty container if no data
//                         }
//                       },
//                     )
//                   : const Center(
//                       child: Text(
//                         'No any image generated yet', // Message if no images generated
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 18,
//                         ),
//                       ),
//                     ),
//             ),
//           Padding(
//             padding: const EdgeInsets.symmetric(
//               horizontal: 16.0,
//             ),
//             child: GestureDetector(
//               onTap: () {
//                 String query = _queryController.text; // Get the input text
//                 if (query.isNotEmpty) {
//                   setState(() {
//                     isItems =
//                         true; // Set the flag to indicate images are being generated
//                   });
//                 } else {
//                   // Log a message if the query is empty
//                   if (kDebugMode) {
//                     print('Query is empty !!');
//                   }
//                 }
//               },
//               child: Container(
//                 width: double.infinity,
//                 height: 100,
//                 decoration: BoxDecoration(
//                   color: Colors.teal.shade100,
//                   borderRadius: BorderRadius.circular(16.0),
//                 ),
//                 child: const Center(
//                   child: Text(
//                     "Genarate Image",
//                     style: TextStyle(
//                         fontSize: 16, fontWeight: FontWeight.w500),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       )
//     );
//   }
// }












// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:stability_image_generation/stability_image_generation.dart';

// class AiTextToImageGenerator extends StatefulWidget {
//   const AiTextToImageGenerator({super.key});
//   @override
//   State<AiTextToImageGenerator> createState() => _AiTextToImageGeneratorState();
// }

// class _AiTextToImageGeneratorState extends State<AiTextToImageGenerator> {
//   // Controller for the input field
//   final TextEditingController _queryController = TextEditingController();
//   // Instance of StabilityAI for image generation
//   final StabilityAI _ai = StabilityAI();
//   // API key for the AI service
//   final String apiKey = 'sk-fj8aMPYtOiIW5tSW1rhTKSYeomP28x3T0nBqNNfIdP8sIge1';
//   // Set the style for the generated image
//   final ImageAIStyle imageAIStyle = ImageAIStyle.digitalPainting;
//   // Flag to check if images have been generated
//   bool isItems = false;
  
//   // Function to generate an image based on the input query
//   Future<Uint8List> _generate(String query) async {
//     Uint8List image = await _ai.generateImage(
//       apiKey: apiKey, // API key
//       imageAIStyle: imageAIStyle, // Style for the image
//       prompt: query, // The text prompt input by the user
//     );
//     return image; // Return the generated image as bytes
//   }

//   // Dispose method to clean up the controller when the widget is removed from the tree
//   @override
//   void dispose() {
//     _queryController.dispose(); // Dispose of the controller
//     super.dispose(); // Call the super class dispose method
//   }

//   @override
//   Widget build(BuildContext context) {
//     // Build the UI of the widget
//     return Scaffold(
//       backgroundColor: Colors.blue[100],
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             const Text(
//               "Text to Image",
//               style: TextStyle(
//                 fontSize: 30,
//               ),
//             ),
//             Container(
//               width: double.infinity,
//               height: 55,
//               margin: const EdgeInsets.all(10),
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.circular(20),
//                 color: Colors.white,
//               ),
//               child: TextField(
//                 controller:
//                     _queryController, // Link the text field to the controller
//                 decoration: const InputDecoration(
//                   hintText: 'Enter your prompt',
//                   border: InputBorder.none,
//                   contentPadding: EdgeInsets.only(left: 15, top: 5),
//                 ),
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.all(20),
//               child: isItems // Check if images have been generated
//                   ? FutureBuilder<Uint8List>(
//                       future: _generate(
//                           _queryController.text), // Call the generate function
//                       builder: (context, snapshot) {
//                         if (snapshot.connectionState ==
//                             ConnectionState.waiting) {
//                           // Show loading indicator while waiting for the image
//                           return const Center(
//                             child: CircularProgressIndicator(),
//                           );
//                         } else if (snapshot.hasData) {
//                           // If data is received, display the generated image
//                           return ClipRRect(
//                             borderRadius: BorderRadius.circular(10),
//                             child: Image.memory(snapshot
//                                 .data!), // Display the image from memory
//                           );
//                         } else {
//                           return Container(); // Return an empty container if no data
//                         }
//                       },
//                     )
//                   : const Center(
//                       child: Text(
//                         'No any image generated yet', // Message if no images generated
//                         style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           fontSize: 18,
//                         ),
//                       ),
//                     ),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 String query = _queryController.text; // Get the input text
//                 if (query.isNotEmpty) {
//                   setState(() {
//                     isItems =
//                         true; // Set the flag to indicate images are being generated
//                   });
//                 } else {
//                   // Log a message if the query is empty
//                   if (kDebugMode) {
//                     print('Query is empty !!');
//                   }
//                 }
//               },
//               child: const Text("Generate Image"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
