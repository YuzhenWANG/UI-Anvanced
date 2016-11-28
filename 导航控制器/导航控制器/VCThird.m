//
//  VCThird.m
//  导航控制器
//
//  Created by 王宇珍 on 16/11/28.
//  Copyright (c) 2016年 王宇珍. All rights reserved.
//

#import "VCThird.h"
#import "VCRoot.h"

@interface VCThird ()

@end

@implementation VCThird

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    self.view.backgroundColor=[UIColor orangeColor];
    self.title=@"第三级";
    
    
    UIBarButtonItem* btnLeft=[[UIBarButtonItem alloc]initWithTitle:@"back" style:UIBarButtonItemStylePlain target:self action:@selector(pressBack)];
    
    self.navigationItem.leftBarButtonItem=btnLeft;
}

-(void)pressBack
{
    [self.navigationController popViewControllerAnimated:YES];
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
