//
//  ViewController.m
//  SixPassValue-Property_demo
//
//  Created by huchunyuan on 15/9/17.
//  Copyright (c) 2015年 Lafree. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()
//@property (nonatomic,retain)SecondViewController *secondVC;// 第二个界面
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// 通过桥获取目标的controller
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender{
    SecondViewController *secondVC = [segue destinationViewController];

    secondVC.text = self.Tf.text;
}
- (void)dealloc {
    [_Tf release];
    [super dealloc];
}
@end
