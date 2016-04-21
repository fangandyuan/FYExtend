//
//  NSDate+FYExtend.m
//  Scard
//
//  Created by 方圆 on 16/4/7.
//  Copyright © 2016年 zhanhua. All rights reserved.
//

#import "NSDate+FYExtend.h"

@implementation NSDate (FYExtend)


- (instancetype)fy_setDatefromString:(NSString *)dateString {
    return [self fy_setDatefromString:dateString withFormat:@"yyyy-MM-dd HH:mm"];
}

- (instancetype)fy_setDatefromString:(NSString *)dateString  withFormat:(NSString *)format {
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    [formatter setDateFormat:format];
    return [formatter dateFromString:dateString];
}

- (NSString *)fy_setStringFromDate {
   return [self fy_setStringFromDateWithFormat:@"yyyy-MM-dd HH:mm"];
}


- (NSString *)fy_setStringFromDateWithFormat:(NSString *)format {
    NSDateFormatter *formatter = [[NSDateFormatter alloc]init];
    [formatter setDateFormat:format];
    return [formatter stringFromDate:self];
    
}

@end
