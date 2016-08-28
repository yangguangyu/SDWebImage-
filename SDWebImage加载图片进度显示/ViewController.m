//
//  ViewController.m
//  SDWebImage加载图片进度显示
//
//  Created by yangguangyu on 16/8/28.
//  Copyright © 2016年 yangguangyu. All rights reserved.
//

#import "ViewController.h"
#import "UIImageView+ProgressView.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *imageView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
//    [self.imageView sd_setImageWithURL:[NSURL URLWithString:@"http://www.raywenderlich.com/wp-content/uploads/2015/02/mac-glasses.jpeg"] usingProgressView:nil ];
    
    //哈哈，盗用一张raywenderlich的图片
    [self.imageView sd_setImageWithURL:[NSURL URLWithString:@"http://www.raywenderlich.com/wp-content/uploads/2015/02/mac-glasses.jpeg"] placeholderImage:nil options:SDWebImageCacheMemoryOnly usingProgressView:nil];
}

@end
