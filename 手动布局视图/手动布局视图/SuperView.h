//
//  SuperView.h
//  手动布局视图
//
//  Created by 王宇珍 on 16/11/22.
//  Copyright (c) 2016年 王宇珍. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SuperView : UIView
{
    UIView* _view01;
    UIView* _view02;
    UIView* _view03;
    UIView* _view04;
    UIView* _view05;
}

-(void)createSubViews;

@end
