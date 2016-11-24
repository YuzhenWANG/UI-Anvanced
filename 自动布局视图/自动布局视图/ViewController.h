//
//  ViewController.h
//  自动布局视图
//
//  Created by 王宇珍 on 16/11/24.
//  Copyright (c) 2016年 王宇珍. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
{
    UIView* _superView;
    
    UILabel* _label01; //左上
    UILabel* _label02; //右上
    UILabel* _label03; //右下
    UILabel* _label04; //左下
    
    UIView* _viewCenter;
    
}

@end

