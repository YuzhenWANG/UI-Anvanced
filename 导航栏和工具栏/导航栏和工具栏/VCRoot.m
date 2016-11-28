//
//  VCRoot.m
//  导航栏和工具栏
//
//  Created by 王宇珍 on 16/11/28.
//  Copyright (c) 2016年 王宇珍. All rights reserved.
//

#import "VCRoot.h"

@interface VCRoot ()

@end

@implementation VCRoot

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor=[UIColor yellowColor];
    
    //设置导航栏风格颜色
    //UIBarStyleBlack:黑色风格，半透明风格
    self.navigationController.navigationBar.barStyle=UIBarStyleBlackOpaque;
    //设置风格为不透明
    self.navigationController.navigationBar.translucent=YES;
    //设置颜色(设置后透明度设置就不起作用了)
    self.navigationController.navigationBar.barTintColor=[UIColor redColor];
    //设置导航原色项目按钮的风格颜色
    self.navigationController.navigationBar.tintColor=[UIColor greenColor];
    self.title=@"根视图";
    
    //隐藏导航栏
    //self.navigationController.navigationBar.hidden=YES;
    
    UIBarButtonItem* btn=[[UIBarButtonItem alloc]initWithTitle:@"next" style:UIBarButtonItemStylePlain target:nil action:nil];
    
    self.navigationItem.rightBarButtonItem=btn;
    
    
    
    
    
    //实现工具栏对象
    //默认工具栏对象是隐藏的
    self.navigationController.toolbarHidden=NO;
    
    
    //用三种方法创建三个工具栏按钮
    UIBarButtonItem* btn01=[[UIBarButtonItem alloc]initWithTitle:@"left" style:UIBarButtonItemStylePlain target:nil action:nil];
    
    UIBarButtonItem* btn02=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemCamera target:nil action:nil];
    
    UIButton* btnImage=[UIButton buttonWithType:UIButtonTypeCustom];
    [btnImage setImage:[UIImage imageNamed:@"1.jpg"] forState:UIControlStateNormal];
    btnImage.frame=CGRectMake(0, 0, 60, 60);
    
    UIBarButtonItem* btn03=[[UIBarButtonItem alloc]initWithCustomView:btnImage];
    
    //固定宽度占位按钮
    UIBarButtonItem* btnF01=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFixedSpace target:nil action:nil];
    btnF01.width=100;
    
    //可变宽度占位按钮
    //UIBarButtonItem* btnF02=[[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemFlexibleSpace target:nil action:nil];
    
    
    //按钮数组
    NSArray* arrayBtns=[NSArray arrayWithObjects:btn01,btnF01,btn02,btnF01,btn03,nil ];
    
    self.toolbarItems=arrayBtns;
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
