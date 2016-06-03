//
//  LanchController.m
//  AnchorPoint
//
//  Created by 王晓东 on 16/6/2.
//  Copyright © 2016年 Ericdong. All rights reserved.
//

#import "LanchController.h"
#import "ViewController.h"
#import "SkipButton.h"
#define kWidth [UIScreen mainScreen].bounds.size.width

@interface LanchController ()

@property (strong, nonatomic) SkipButton *SkipButton;



@end

@implementation LanchController
- (instancetype)init {
    self = [self initWithNibName:NSStringFromClass(self.class) bundle:nil];
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    _SkipButton = [[SkipButton alloc] initWithFrame:CGRectMake(kWidth - 40, 24, 20, 20) circleColor:[UIColor colorWithRed:0.984 green:0.051 blue:0.094 alpha:1.00] lineWidth:2 timeCount:5.0 finished:^{
        UIWindow *win = [UIApplication sharedApplication].keyWindow;
        UIViewController *vc = [[ViewController alloc] init];
        [UIView transitionFromView:self.view toView:vc.view duration:.8 options:UIViewAnimationOptionTransitionCrossDissolve|UIViewAnimationOptionCurveLinear completion:^(BOOL finished) {
            win.rootViewController = vc;
        }];
    }] ;
    _SkipButton.sameActionWithClick = YES;
    _SkipButton.backgroundColor = [UIColor colorWithRed:0.157 green:0.031 blue:0.235 alpha:1.00];
    [_SkipButton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [_SkipButton setTitle:@"跳过" forState:UIControlStateNormal];
    _SkipButton.titleLabel.font = [UIFont boldSystemFontOfSize:9];
    [self.view addSubview:_SkipButton];
    [_SkipButton startAnimation];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
