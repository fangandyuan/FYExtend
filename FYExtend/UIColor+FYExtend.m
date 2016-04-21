//
//  UIColor+FYExtend.m
//  Scard
//
//  Created by 方圆 on 16/4/6.
//  Copyright © 2016年 zhanhua. All rights reserved.
//

#import "UIColor+FYExtend.h"

@implementation UIColor (FYExtend)
#pragma mark  十六进制颜色
+ (UIColor *)fy_colorFromString:(NSString *)colorString{
    return [self fy_colorFromString:colorString alpha:1.0f];
}




#pragma mark  十六进制颜色
+ (UIColor *)fy_colorFromString:(NSString *)colorString alpha:(float)alpha{
    
    unsigned int red, green, blue;
    
    NSRange range;
    
    range.length =2;
    
    range.location =0;
    
    [[NSScanner scannerWithString:[colorString substringWithRange:range]]scanHexInt:&red];
    
    range.location =2;
    
    [[NSScanner scannerWithString:[colorString substringWithRange:range]]scanHexInt:&green];
    
    range.location =4;
    
    [[NSScanner scannerWithString:[colorString substringWithRange:range]]scanHexInt:&blue];
    
    UIColor *color = [UIColor colorWithRed:(float)(red/255.0f)green:(float)(green/255.0f)blue:(float)(blue/255.0f)alpha:alpha];
    
    return color;
}
@end
