//
//  VCRoot.m
//  导航控制器
//
//  Created by 王宇珍 on 16/11/24.
//  Copyright (c) 2016年 王宇珍. All rights reserved.
//

#import "VCRoot.h"
#import "VCSecond.h"


@interface VCRoot ()

@end

@implementation VCRoot

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //设置导航栏透明度
    //IOS7之后默认透明度为YES
    self.navigationController.navigationBar.translucent=NO;
    //设置导航风格
    self.navigationController.navigationBar.barStyle=UIBarStyleDefault;
    
    self.view.backgroundColor=[UIColor blueColor];
    
    self.title=@"根视图";
    UIBarButtonItem* next=[[UIBarButtonItem alloc]initWithTitle:@"next" style:UIBarButtonItemStylePlain target:self action:@selector(pressNext)];
    
    self.navigationItem.rightBarButtonItem=next;
    
}


-(void)pressNext
{
    //创建新的视图控制器
    VCSecond* vcSecond = [[VCSecond alloc]init];
    //使用当前的视图控制器的导航控制器对象
    //堆栈的方式来管理 栈顶显示VCSecond
    //返回键自动添加
    [self.navigationController pushViewController:vcSecond animated:YES];
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
