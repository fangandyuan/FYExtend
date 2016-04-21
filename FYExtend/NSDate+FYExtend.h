//
//  NSDate+FYExtend.h
//  Scard
//
//  Created by 方圆 on 16/4/7.
//  Copyright © 2016年 zhanhua. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSDate (FYExtend)

///NSString 转 NSDate yyyy-MM-dd HH:mm
- (instancetype)fy_setDatefromString:(NSString *)dateString;

///NSString 转 NSDate
- (instancetype)fy_setDatefromString:(NSString *)dateString  withFormat:(NSString *)format;

///NSDate转NSString 格式yyyy-MM-dd HH:mm
- (NSString *)fy_setStringFromDate;

///NSDate转NSString
- (NSString *)fy_setStringFromDateWithFormat:(NSString *)format;
@end
