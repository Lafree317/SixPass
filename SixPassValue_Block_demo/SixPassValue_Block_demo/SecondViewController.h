//
//  SecondViewController.h
//  SixPassValue_Block_demo
//
//  Created by huchunyuan on 15/9/17.
//  Copyright (c) 2015年 Lafree. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^PassValueBlock)(NSString *);

@interface SecondViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *TF;
@property (nonatomic,copy)PassValueBlock passValueBlock;
@end
