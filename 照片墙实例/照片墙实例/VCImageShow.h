//
//  VCImageShow.h
//  照片墙实例
//
//  Created by 王宇珍 on 16/12/2.
//  Copyright (c) 2016年 王宇珍. All rights reserved.
//  要把点击的视图传递下去

#import <UIKit/UIKit.h>

@interface VCImageShow : UIViewController


//分别用以下三种方法将点击的视图传递下去
@property(nonatomic,assign)NSUInteger imgTag;
@property(nonatomic,retain)UIImage* image;
@property(nonatomic,retain)UIImageView* imgView;

@end
