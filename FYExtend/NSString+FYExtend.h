//
//  NSString+FYExtend.h
//  Scard
//
//  Created by 方圆 on 16/4/7.
//  Copyright © 2016年 zhanhua. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (FYExtend)
///字符串转二维码
- (UIImage *)fy_setQRcodeWithSize:(CGFloat)size;
///二维码转字符串 系统的兼容太差 第三方库又太大

@end
