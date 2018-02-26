//
//  ViewController.m
//  ZHView
//
//  Created by 李保征 on 2017/7/19.
//  Copyright © 2017年 李保征. All rights reserved.
//

#import "ViewController.h"
#import "ZHGradientView.h"
#import "ZHMarqueeView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self testGradientView];
    [self testMarqueeView];
}


- (void)testGradientView{
    ZHGradientView *view = [[ZHGradientView alloc] initWithFrame:CGRectMake(0, 100, 300, 50)];
    view.linearDirection = ZHLinearGradientDirectionLeftToRight;
    view.beginColor = [UIColor orangeColor];
    view.endColor = [UIColor redColor];
    [self.view addSubview:view];
}

- (void)testMarqueeView{
    ZHMarqueeView *view = [[ZHMarqueeView alloc] initWithFrame:CGRectMake(100, 300, 200, 0)];
    view.backgroundColor = [UIColor cyanColor];
    
    UILabel *titleLabel = [[UILabel alloc] init];
    titleLabel.text = @"爱爱奶女爱那若怒uua";
    titleLabel.textColor = [UIColor orangeColor];
    titleLabel.font = [UIFont systemFontOfSize:15];
    
    view.titleLabel = titleLabel;
    
    [self.view addSubview:view];
    
    [view startAnimation];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
