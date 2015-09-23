//
//  SecondViewController.m
//  SixPassValue_TargetAction_demo
//
//  Created by huchunyuan on 15/9/17.
//  Copyright (c) 2015年 Lafree. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController (){

    id _target;// 执行者
    SEL _action;// 方法
}



@end

@implementation SecondViewController
// 声明方法 获取方法 以及方法的执行者
- (void)addTarget:(id)target action:(SEL)action{
    _target = target;
    _action = action;
}

- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    
    [_target performSelector:_action withObject:self.Tf.text];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
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
