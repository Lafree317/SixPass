//
//  FirstViewController.m
//  SixPassValue_Notification_demo
//
//  Created by huchunyuan on 15/9/17.
//  Copyright (c) 2015年 Lafree. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    // 注册一个通知
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(getValue1:) name:@"传值" object:nil];
}
- (void)getValue1:(NSNotification *)notification{
    NSLog(@"%@",notification);
    // 字面量
//    NSDictionary *userInfo = ((NSDictionary *) notification)[@"userInfo"];
    NSString *value = [notification valueForKey:@"userInfo"][@"value"];
    _Tf.text = value;
}
- (IBAction)PUSH:(id)sender {
    
    SecondViewController *secondVC = [[SecondViewController alloc] init];
    
    
    [self.navigationController pushViewController:secondVC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
