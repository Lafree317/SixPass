//
//  ScondViewController.m
//  SixPassValue_delegate_demo
//
//  Created by huchunyuan on 15/9/17.
//  Copyright (c) 2015年 Lafree. All rights reserved.
//

#import "ScondViewController.h"

@interface ScondViewController ()

@end

@implementation ScondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
}

- (void)viewWillDisappear:(BOOL)animated{
    [super viewWillDisappear:animated];
    [self.delegate passValue:_Tf.text];
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

- (void)dealloc {
    [_Tf release];
    [super dealloc];
}
@end
