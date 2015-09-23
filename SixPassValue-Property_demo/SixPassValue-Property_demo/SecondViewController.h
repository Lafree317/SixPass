//
//  SecondViewController.h
//  SixPassValue-Property_demo
//
//  Created by huchunyuan on 15/9/17.
//  Copyright (c) 2015年 Lafree. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SecondViewController : UIViewController
@property (retain, nonatomic) IBOutlet UITextField *Tf;
@property (nonatomic,copy)NSString *text;// 用于接收前一个界面传来的数据

@end
