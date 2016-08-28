//
//  CustomProgressView.m
//  SDWebImage加载图片进度显示
//
//  Created by yangguangyu on 16/8/28.
//  Copyright © 2016年 yangguangyu. All rights reserved.
//

#import "CustomProgressView.h"

@interface CustomProgressView ()

@property (nonatomic, strong) UILabel* progressLabel;

@end
@implementation CustomProgressView

-(UILabel *)progressLabel {
    if (!_progressLabel) {
        _progressLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 60, 60)];
        [self addSubview:_progressLabel];
    }
    return _progressLabel;
}

-(void)layoutSubviews {
    self.progressLabel.center = self.center;
}

- (void)setProgressValue:(CGFloat)progressValue
{
    _progressValue = progressValue;
    
    // 在字符创中 %% = @"%"
    
    // 设置label的文字
    self.progressLabel.text = [NSString stringWithFormat:@"%.2f%%", progressValue * 100];
    NSLog(@"self.progressLabel - %f",progressValue);
    // 重绘
    [self setNeedsDisplay];
}

-(void)drawRect:(CGRect)rect {
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:self.center radius:self.frame.size.width < self.frame.size.height ? self.frame.size.width * 0.3 : self.frame.size.height * 0.3 startAngle:-M_PI_2 endAngle:2 * M_PI * self.progressValue - M_PI_2 clockwise:1];
    
    [path setLineWidth:3];
    [[UIColor blueColor] setStroke];
    // 填充
    [path stroke];
}

@end
