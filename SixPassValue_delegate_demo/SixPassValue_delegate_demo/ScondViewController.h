//
//  ScondViewController.h
//  SixPassValue_delegate_demo
//
//  Created by huchunyuan on 15/9/17.
//  Copyright (c) 2015年 Lafree. All rights reserved.
//

#import <UIKit/UIKit.h>
//@class ScondViewController;
@protocol SecondViewControllerDelegate<NSObject>

- (void)passValue:(NSString *)str;

@end

@interface ScondViewController : UIViewController
@property (retain, nonatomic) IBOutlet UITextField *Tf;
@property (nonatomic,assign)id<SecondViewControllerDelegate>delegate;

@end
