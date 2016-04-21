//
//  UIColor+FYExtend.h
//  Scard
//
//  Created by 方圆 on 16/4/6.
//  Copyright © 2016年 zhanhua. All rights reserved.
//

#import <UIKit/UIKit.h>
#define fyRGB(r,g,b) [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:1.0f]
#define fyRGBA(r,g,b,a) [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:a]
#define fy_Color(colorV) [UIColor fy_colorFromString:@#colorV]
#define fy_ColorAlpha(colorV,a) [UIColor fy_colorFromString:@#colorV alpha:a];
@interface UIColor (FYExtend)

///十六进制颜色
+ (UIColor *)fy_colorFromString:(NSString *)colorString;

///十六进制颜色:含alpha
+ (UIColor *)fy_colorFromString:(NSString *)colorString alpha:(float)alpha;
@end
