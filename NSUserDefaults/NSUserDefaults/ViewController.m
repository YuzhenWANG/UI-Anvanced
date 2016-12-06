//
//  ViewController.m
//  NSUserDefaults
//
//  Created by 王宇珍 on 16/12/6.
//  Copyright (c) 2016年 王宇珍. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //创建圆角按钮
    UIButton* btn=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    btn.frame=CGRectMake(100, 100, 80, 40);
    [btn setTitle:@"写入文件" forState:UIControlStateNormal];
    //添加事件函数
    [btn addTarget:self action:@selector(pressWrite) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
    
    
    
    UIButton* btnRead=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    btnRead.frame=CGRectMake(100, 200, 80, 40);
    [btnRead setTitle:@"读出文件" forState:UIControlStateNormal];
    [btnRead addTarget:self action:@selector(pressRead) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnRead];
    
    
}



-(void)pressWrite
{
    //定义一个用户默认数据对象
    //不需要alloc创建，用户默认数据对象单例模式
    //standardUserDefaults：获取全局唯一实例对象
    NSUserDefaults* ud=[NSUserDefaults standardUserDefaults];
    
    
    //存储字符串对象
    //P1 要存储的对象id
    //P2 对象的名字key
    [ud setObject:@"Mike" forKey:@"Name"];
    
    
    //存储数据对象
    NSNumber* num=[NSNumber numberWithInt:100];
    [ud setObject:num forKey:@"Num"];
    
    //存储整型数据
    [ud setInteger:123 forKey:@"Int"];
    
    //存储BOOL类型
    [ud setBool:YES forKey:@"Bool"];
    
    //存储浮点
    [ud setFloat:1.55 forKey:@"Float"];
    
    
    //存储数组
    NSArray* array=[NSArray arrayWithObjects:@"11",@"22",@"33",nil];
    [ud setObject:array forKey:@"Array"];
    
}


-(void)pressRead
{
    NSUserDefaults* ud=[NSUserDefaults standardUserDefaults];
    id object = [ud objectForKey:@"Name"];
    NSString* name=(NSString*)object;
    NSLog(@"name = %@",name);
    
    
    object= [ud objectForKey:@"Num"];
    NSNumber* num=(NSNumber*)object;
    NSLog(@"num = %@",num);
    
    
    NSInteger iV= [ud integerForKey:@"Int"];
    NSLog(@"int = %ld",iV);
    
    BOOL bV=[ud boolForKey:@"Bool"];
    NSLog(@"bV=@d",bV);
    
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
