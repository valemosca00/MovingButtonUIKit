# MovingButtonUIKit
Hi everyone, this repository is meant to show you how to reuse the Custom Moving/Floating Button I have implemented
using UIKit.

## How to use Custom Moving/Floating Button

You can simply add the `CustomMovingButton.swift` file to your project and use it as follows:

1. Create in your `UIViewController` your Button: `let button = CustomMovingButton(title: "Tap Me",maxMovements: 10)`
   The `title` represent what will be showed inside the button
   The `maxMovements` represent how many random moves, inside the View, will the button do.
   
2. In the `override func viewDidLoad()` set which action will the button do after the `maxMovements`, in this case 10 moves,
   by adding `button.action = myFuncName`, where `myFuncName` is a function implemented by you. (Check the code for an example.)
   
3. Don't forget, inside `CustomMovingButton.swift` to change the `width` and `height` inside the `@objc func moveButton` based on your button size.

Enjoy and feel free to contact me for any doubts!

## How to use TimeManager Class

Add the `TimeManager.swift` file to your project and use it as follows:

1. Declare inside the `UIViewCOntroller` your manager as an optional `var timeManager: TimeManager?`
   to being able to pass a label as a parameter, inside your `override func viewDidLoad()` 
   for example: `timeManager = TimeManager(label: timerLabel)`.
   
2. Reuse the already implemented func inside the class.
   
 Enjoy and feel free to contact me for any doubts!
 
## Credits

Image by <a href="https://www.freepik.com/free-vector/flat-good-job-great-job-stickers-pack_13587987.htm#query=great&position=42&from_view=search&track=sph">Freepik</a>

https://www.freepik.com/free-vector/flat-good-job-great-job-stickers-pack_13587987.htm#query=great&position=42&from_view=search&track=sph

<a href="https://www.flaticon.com/free-icons/prize" title="prize icons">Prize icons created by Freepik - Flaticon</a>

Font: Vibur
Author: Johan Kallas
