# Animation Project One (Used Widget)

## Rive Animation Tool In Flutter:
- Rive 
    - Rive [https://rive.app/]
    - [dev](https://pub.dev/packages/rive)
    - [video](https://www.youtube.com/watch?v=mEl4ad1WXps)

## Used Widget:

-  Stack Widget  [dev](https://api.flutter.dev/flutter/widgets/Positioned-class.html)  [video](https://www.youtube.com/watch?v=-TfM47efHs8)
    -  Almost like stack can overflow anything 

-  Positioned Widget [dev](https://api.flutter.dev/flutter/widgets/Positioned-class.html)  [Video]()
    - INFO(Positioned.fill() method is often used within a Positioned widget to make a child widget take up the entire available        space within its parent)

-  For Blur (BackdropFilter) [dev](https://api.flutter.dev/flutter/widgets/BackdropFilter-class.html)    [video](https://www.youtube.com/watch?v=rBJBr4nuuuE)

- SafeArea Widget  [dev](https://api.flutter.dev/flutter/widgets/SafeArea-class.html)

- Spacer with fex  _DEV Video Is Enough_  [dev](https://api.flutter.dev/flutter/widgets/Spacer-class.html)

- ShowGeneralDialog Method [Dev](https://api.flutter.dev/flutter/widgets/showGeneralDialog.html)   [Video](https://www.youtube.com/watch?v=WQC50wCrL2o)


  
<br><br>
## Details about -> ShowGeneralDialog Method
The `showGeneralDialog` function in Flutter is used to display a general-purpose dialog. It is a more customizable version of the basic `showDialog` function. Here's an explanation of the parameters you mentioned:

1. **`barrierColor` (Color):**
   - This parameter defines the color of the barrier behind the dialog. The barrier is the semi-transparent background that covers the entire screen when the dialog is displayed.
   - The default value is `const Color(0x80000000)`, which corresponds to a translucent black color. You can customize it by providing a different color.

2. **`barrierLabel` (String?):**
   - This parameter allows you to set a label for the barrier. The barrier label is typically used for accessibility purposes.
   - For example, if you're using a screen reader, the label helps describe the purpose of the barrier to users with visual impairments.

3. **`barrierDismissible` (bool):**
   - If set to `true`, the dialog can be dismissed by tapping on the barrier (the area outside the dialog). If set to `false`, tapping on the barrier will have no effect.
   - This parameter controls whether the user can dismiss the dialog by interacting with the background barrier.

4. **`transitionBuilder` (RouteTransitionsBuilder?):**
   - This parameter allows you to define a custom transition for how the dialog appears and disappears on the screen.
   - You can provide a function that takes a `BuildContext`, `Animation<double>`, `Animation<double>`, and a `Widget` and returns a `Widget`. This gives you control over the animation during the transition.


<br><br>
- Divider [dev](https://api.flutter.dev/flutter/material/Divider-class.html)

- Form [dev](https://api.flutter.dev/flutter/widgets/Form-class.html)  [Video](https://www.youtube.com/watch?v=2u_yH5qJp7U)

- Transform [dev](https://api.flutter.dev/flutter/widgets/Transform-class.html)

- Future class For Asynchronous Programming  [dev](https://api.flutter.dev/flutter/dart-async/Future-class.html)      [video](https://www.youtube.com/watch?v=TnOuPlQRa0Y)

- Tween [dev](https://api.flutter.dev/flutter/animation/Tween-class.html) [video](https://api.flutter.dev/flutter/animation/Tween-class.html)

- SlideTransition [dev](https://api.flutter.dev/flutter/widgets/SlideTransition-class.html)
