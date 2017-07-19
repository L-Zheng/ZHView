//
//  ZHGradientView.m
//  ZHView
//
//  Created by 李保征 on 2017/7/19.
//  Copyright © 2017年 李保征. All rights reserved.
//

#import "ZHGradientView.h"

@implementation ZHGradientView

- (void)drawRect:(CGRect)rect {
    
    if (self.beginColor == nil || self.endColor == nil){
        return;
    }
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSaveGState(context);
    if (self.gradientFillPath){
        CGContextAddPath(context, self.gradientFillPath.CGPath);
        CGContextClip(context);
    }
    
    CGColorSpaceRef rgb = CGColorSpaceCreateDeviceRGB();
    CGColorRef beginColorRef = self.beginColor.CGColor;
    CGColorRef endColorRef = self.endColor.CGColor;
    CFArrayRef colorArray = CFArrayCreate(kCFAllocatorDefault, (const void*[]){beginColorRef, endColorRef}, 2, nil);
    CGGradientRef gradient = CGGradientCreateWithColors(rgb, colorArray, (CGFloat[]){0.0f, 1.0f});
    CFRelease(colorArray);
    CGColorSpaceRelease(rgb);
    
    switch (self.gradientStyle) {
        case ZHGradientStyleRadial:
            CGContextDrawRadialGradient(context, gradient, CGPointMake(self.bounds.size.width / 2, self.bounds.size.height / 2), 0, CGPointMake(self.bounds.size.width / 2, self.bounds.size.height / 2), MAX(self.bounds.size.width, self.bounds.size.height), 0);
            break;
            
        default:{
            CGPoint startPoint;
            CGPoint endPoint;
            switch (self.linearDirection) {
                case ZHLinearGradientDirectionBottomToTop:
                    startPoint = CGPointMake(self.frame.size.width / 2, self.frame.size.height);
                    endPoint = CGPointMake(self.frame.size.width / 2, 0);
                    break;
                case ZHLinearGradientDirectionLeftToRight:
                    startPoint = CGPointMake(0, self.frame.size.height / 2);
                    endPoint = CGPointMake(self.frame.size.width, self.frame.size.height / 2);
                    break;
                case ZHLinearGradientDirectionRightToLeft:
                    startPoint = CGPointMake(self.frame.size.width, self.frame.size.height / 2);
                    endPoint = CGPointMake(0, self.frame.size.height / 2);
                    break;
                    
                default:
                    startPoint = CGPointMake(self.frame.size.width / 2, 0);
                    endPoint = CGPointMake(self.frame.size.width / 2, self.frame.size.height);
                    break;
            }
            CGContextDrawLinearGradient(context, gradient, startPoint, endPoint, 0);
        }
            break;
    }
    
    CGGradientRelease(gradient);
    CGContextRestoreGState(context);
}

@end
