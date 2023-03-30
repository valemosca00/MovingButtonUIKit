# MovingButtonUIKit

## How to use Custom Moving/Floating Button
Hi everyone, this repository is meant to show you how to reuse the Custom Moving/Floating Button I have implemented
using UIKit.

You can simply add the `CustomMovingButton.swift` file to your project and using it as follow:

1. Create in your `UIViewController` your Button: `let button = CustomMovingButton(title: "Tap Me",maxMovements: 10)`
   The `title` represent what will be showed inside the button
   The `maxMovements` represent how many random moves, inside the View, will the button do.
   
2. In the `override func viewDidLoad()` set which action will the button do after the `maxMovements` moves, in this case is 10,
   by adding `button.action = myFuncName`, where `myFuncName` is a function implemented by you. (Check the code for an example.)


