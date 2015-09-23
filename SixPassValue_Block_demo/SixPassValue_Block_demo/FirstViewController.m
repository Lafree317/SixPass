//
//  FirstViewController.m
//  SixPassValue_Block_demo
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

    
    
}
- (IBAction)PUSH:(id)sender {
    SecondViewController *secondVC = [[SecondViewController alloc ]init];
    __block FirstViewController *firstVC = self;
    secondVC.passValueBlock = ^void (NSString *text){
        // 给当前视图的控件赋值
        firstVC.TF.text = text;
    };
    // 使用属性
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
