//
//  SecondViewController.h
//  SixPassValue_TargetAction_demo
//
//  Created by huchunyuan on 15/9/17.
//  Copyright (c) 2015年 Lafree. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController



@property (weak, nonatomic) IBOutlet UITextField *Tf;
// 声明方法 获取方法 以及方法的执行者
- (void)addTarget:(id)target action:(SEL)action;
@end
