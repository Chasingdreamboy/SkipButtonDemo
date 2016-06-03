//
//  ViewController.m
//  AnchorPoint
//
//  Created by 王晓东 on 16/6/2.
//  Copyright © 2016年 Ericdong. All rights reserved.
//

#import "ViewController.h"
#define kWidth [UIScreen mainScreen].bounds.size.width


@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(40,100 , kWidth - 40 * 2, 40)];
    label.textAlignment = NSTextAlignmentCenter;
    label.text = @"假装这是应用主界面";
    [self.view addSubview:label];


    // Do any additional setup after loading the view, typically from a nib.
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
