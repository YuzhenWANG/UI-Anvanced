//
//  ViewController.h
//  UIPickerView
//
//  Created by 王宇珍 on 16/12/5.
//  Copyright (c) 2016年 王宇珍. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

//继承协议
//普通协议：处理视图选取等事件
//数据协议：处理获取数据时的代理协议函数
<UIPickerViewDataSource, UIPickerViewDelegate>


@end

