//
//  ZHGradientView.h
//  ZHView
//
//  Created by 李保征 on 2017/7/19.
//  Copyright © 2017年 李保征. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, ZHGradientStyle){
    ZHGradientStyleLinear     = 0,
    ZHGradientStyleRadial     = 1,
};

typedef NS_ENUM(NSInteger, ZHLinearGradientDirection){
    ZHLinearGradientDirectionTopToBottom     = 0,
    ZHLinearGradientDirectionBottomToTop     = 1,
    ZHLinearGradientDirectionLeftToRight     = 2,
    ZHLinearGradientDirectionRightToLeft     = 3,
};

@interface ZHGradientView : UIView

@property(nonatomic,strong) UIColor *beginColor;
@property(nonatomic,strong) UIColor *endColor;

@property(nonatomic,strong) UIBezierPath *gradientFillPath;

@property(nonatomic,assign) ZHGradientStyle gradientStyle;
@property(nonatomic,assign) ZHLinearGradientDirection linearDirection;

@end
