//
//  SkipButton.h
//  AnchorPoint
//
//  Created by 王晓东 on 16/6/2.
//  Copyright © 2016年 Ericdong. All rights reserved.
//

#import <UIKit/UIKit.h>
/**
 *  动画结束时的回调方法
 */
typedef void(^Finished) (void);



@interface SkipButton : UIButton
/**
 *  触发点击事件是否回调finished
 */
@property (assign, nonatomic) BOOL sameActionWithClick;
/**
 *  初始化方法
 *
 *  @param frame     视图的frame
 *  @param tintColor 边缘圆环的颜色
 *  @param lineWidth 边缘线的宽度
 *  @param timeCount 动画持续时间
 *  @param finished  动画结束(或者点击事件)的回调
 *
 *  @return 初始化对象
 */

-(instancetype)initWithFrame:(CGRect)frame circleColor:(UIColor *)tintColor lineWidth:(CGFloat)lineWidth timeCount:(CGFloat)timeCount finished:(Finished)finished;
/**
 *  开始动画
 */
- (void)startAnimation;
@end
