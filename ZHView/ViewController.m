//
//  ViewController.m
//  ZHView
//
//  Created by 李保征 on 2017/7/19.
//  Copyright © 2017年 李保征. All rights reserved.
//

#import "ViewController.h"
#import "ZHGradientView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self testGradientView];
}


- (void)testGradientView{
    ZHGradientView *view = [[ZHGradientView alloc] initWithFrame:CGRectMake(0, 100, 300, 50)];
    view.linearDirection = ZHLinearGradientDirectionLeftToRight;
    view.beginColor = [UIColor orangeColor];
    view.endColor = [UIColor redColor];
    [self.view addSubview:view];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
