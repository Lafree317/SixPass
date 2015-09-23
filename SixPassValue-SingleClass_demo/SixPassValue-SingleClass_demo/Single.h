//
//  Single.h
//  SixPassValue-SingleClass_demo
//
//  Created by huchunyuan on 15/9/17.
//  Copyright (c) 2015年 Lafree. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Single : NSObject
+ (Single *)sharSingle;
@property (nonatomic,copy)NSString *text;
@end
