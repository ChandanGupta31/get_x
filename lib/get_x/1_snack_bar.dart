import 'package:get/get.dart';
import 'package:flutter/material.dart';

class SnackBarScreen extends StatelessWidget {
  const SnackBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('SnackBar'),
        ),
        body: Center(
          child: ElevatedButton(
            child: Text('Show SnackBar'),
            onPressed: () {
              Get.snackbar(
                'SnackBar Title', 'Hi I am checking getx snackbar',
                snackPosition: SnackPosition.BOTTOM,
                // titleText: Text('Another Title'), // This will overwrite the first title given above
                // messageText: Text('Another Message'), // This will overwrite the first message given above
                colorText: Colors.white,
                backgroundColor: Colors.amber,
                borderRadius: 40,
                borderColor: Colors
                    .lightBlueAccent, // whenever using bordercolor use borderwidth otherwise it will generate error
                borderWidth: 1,
                margin: EdgeInsets.all(20),
                // maxWidth: 200,  // maximum width of the snackbar
                animationDuration: Duration(milliseconds: 1000),
                backgroundGradient: LinearGradient(colors: [
                  Colors.amberAccent,
                  Colors.lightBlueAccent
                ]), // After applying this background color will not have any effect
                boxShadows: [
                  BoxShadow(
                      color: Colors.grey,
                      offset: Offset(4, 2),
                      spreadRadius: 3,
                      blurRadius: 1),
                ],
                isDismissible: true,
                dismissDirection: DismissDirection.horizontal,
                duration: Duration(
                    seconds:
                        3), // this specify how long snackbar will be on the screen
                icon: Icon(
                  Icons.person,
                  color: Colors.grey,
                  size: 50,
                ),
                shouldIconPulse: false, // icon has pulse animation, to avoid it use this
                leftBarIndicatorColor: Colors.black,
                mainButton: TextButton(
                  child: Text('Retry'),
                  onPressed: (){},
                ),
                overlayBlur: 2, // This will blur the screen
                overlayColor: Colors.greenAccent,  // This will apply the color on blur
                padding: EdgeInsets.all(10),
                showProgressIndicator: true,
                progressIndicatorBackgroundColor: Colors.black, // This will define the indicator colors which is in progress
                progressIndicatorValueColor: AlwaysStoppedAnimation(Colors.white), // This will define the background color of progress indicator
                forwardAnimationCurve: Curves.easeInOut,
                reverseAnimationCurve: Curves.bounceOut,
                snackbarStatus: (val){
                  print(val);
                },
                // userInputForm: Form(
                //   child: Row(
                //     children: [
                //       Expanded(
                //         child: TextField(),
                //       )
                //     ],
                //   ),
                // ),// This will track the status of snackbar whether it is open or close
              );
            },
          ),
        ),
      ),
    );
  }
}
