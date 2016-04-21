//
//  UIImage+FYExtend.m
//  Scard
//
//  Created by 方圆 on 16/4/6.
//  Copyright © 2016年 zhanhua. All rights reserved.
//

#import "UIImage+FYExtend.h"

@implementation UIImage (FYExtend)

- (UIImage *)fy_circleImage {
    CGFloat scale = self.scale;
    CGFloat originWidth  = self.size.width * scale;
    CGFloat originHeight = self.size.height * scale;
    
    // 裁剪图片正中区域
    CGFloat cropW = MIN(originWidth, originHeight);
    CGFloat cropX = ((originWidth - originHeight) > 0) ? (originWidth - originHeight) * 0.5f : 0;
    CGFloat cropY = ((originHeight - originWidth) > 0) ? (originHeight - originWidth) * 0.5f : 0;
    CGRect cropRect = CGRectMake(cropX, cropY, cropW, cropW);
    CGImageRef cropRef = CGImageCreateWithImageInRect(self.CGImage, cropRect);
    
    UIImage *image = [UIImage imageWithCGImage:cropRef scale:scale orientation:self.imageOrientation];
    CGImageRelease(cropRef);
    
    UIGraphicsBeginImageContextWithOptions(image.size, NO, image.scale);
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetAllowsAntialiasing(context, YES);
    CGContextSetShouldAntialias(context, YES);
    
    CGRect rect = (CGRect){CGPointZero, image.size};
    CGContextAddEllipseInRect(context, rect);
    CGContextClip(context);
    [image drawInRect:rect];
    
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
}

- (instancetype)fy_squareImage{
    CGFloat scale = self.scale;
    CGFloat originWidth  = self.size.width * scale;
    CGFloat originHeight = self.size.height * scale;
    CGFloat cropW = MIN(originWidth, originHeight);
    CGFloat cropX = ((originWidth - originHeight) > 0) ? (originWidth - originHeight) * 0.5f : 0;
    CGFloat cropY = ((originHeight - originWidth) > 0) ? (originHeight - originWidth) * 0.5f : 0;
    CGRect cropRect = CGRectMake(cropX, cropY, cropW, cropW);
    CGImageRef cropRef = CGImageCreateWithImageInRect(self.CGImage, cropRect);
    
    UIImage *squareImage = [UIImage imageWithCGImage:cropRef scale:scale orientation:self.imageOrientation];
    return squareImage;
}
@end
