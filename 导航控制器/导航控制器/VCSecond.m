//
//  VCSecond.m
//  导航控制器
//
//  Created by 王宇珍 on 16/11/28.
//  Copyright (c) 2016年 王宇珍. All rights reserved.
//

#import "VCSecond.h"
#import "VCThird.h"

@interface VCSecond ()

@end

@implementation VCSecond

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.view.backgroundColor=[UIColor greenColor];
    self.title=@"视图二";
    
    UIBarButtonItem* btnNext=[[UIBarButtonItem alloc]initWithTitle:@"第三级" style:UIBarButtonItemStylePlain target:self action:@selector(pressNext)];
    
    self.navigationItem.rightBarButtonItem=btnNext;
}


-(void)pressNext
{
    //创建新的视图控制器
    VCThird* vcThird = [[VCThird alloc]init];
    //使用当前的视图控制器的导航控制器对象
    //堆栈的方式来管理 栈顶显示VCSecond
    //返回键自动添加
    [self.navigationController pushViewController:vcThird animated:YES];
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
