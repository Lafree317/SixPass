//
//  FirstViewController.m
//  SixPassValue_delegate_demo
//
//  Created by huchunyuan on 15/9/17.
//  Copyright (c) 2015年 Lafree. All rights reserved.
//

#import "FirstViewController.h"
#import "ScondViewController.h"

@interface FirstViewController ()<SecondViewControllerDelegate>

@end

@implementation FirstViewController
- (IBAction)PUSH:(id)sender {
    ScondViewController *ScondVC = [[ScondViewController alloc] init];
    ScondVC.delegate = self;
    [self.navigationController pushViewController:ScondVC animated:YES];
    
}
- (void)passValue:(NSString *)str{
    _Tf.text = str;
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

- (void)dealloc {
    [_Tf release];
    [super dealloc];
}
@end
