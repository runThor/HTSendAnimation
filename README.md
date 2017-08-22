# HTSendAnimation
A send animation
## Show
![demoImg](https://github.com/runThor/HTSendAnimation/raw/master/Other/Demo.png)
## Usage
```Objective-C
// ViewController.m

#import "HTSendAnimation.h"

HTSendAnimation *sendView = [[HTSendAnimation alloc] initWithFrame:CGRectMake(0, 0, SCREEN_WIDTH, SCREEN_HEIGHT)];
sendView.backgroundColor = [[UIColor grayColor] colorWithAlphaComponent:0.5];
[self.view addSubview:sendView];
```
