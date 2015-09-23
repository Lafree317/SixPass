//
//  FirstViewController.m
//  SixPassValue-SingleClass_demo
//
//  Created by huchunyuan on 15/9/17.
//  Copyright (c) 2015年 Lafree. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"
#import "Single.h"
@interface FirstViewController ()

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)PUSH:(id)sender {
    SecondViewController *secondVC = [[SecondViewController alloc] init];
    
    // push
    [self.navigationController pushViewController:secondVC animated:YES];
    
    [Single sharSingle].text = self.Tf.text;
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
