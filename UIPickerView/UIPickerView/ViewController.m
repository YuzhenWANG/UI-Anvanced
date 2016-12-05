//
//  ViewController.m
//  UIPickerView
//
//  Created by 王宇珍 on 16/12/5.
//  Copyright (c) 2016年 王宇珍. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    
    //创建选择视图对象
    //用来显示多组数据和多个元素以供选择
    UIPickerView* pickerView=[[UIPickerView alloc]init];
    pickerView.frame=CGRectMake(10, 100, 300, 200);
    //设置普通代理对象为当前的视图控制器
    pickerView.delegate=self;
    //设置数据代理对象为当前视图控制器
    pickerView.dataSource=self;
    
    
    
    [self.view addSubview:pickerView];
}


//实现获取数组的协议函数
//返回值为选择视图的组数
//整数类型
-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    //返回3组
    return 3;
}


//实现每组元素的个数
//每组元素有多少行
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    if (component==0) {
        return 3;
    }
    else if (component==1)
    {
        return 5;
    }
    else
        return 10;
}


//显示每个元素的内容
-(NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    NSString* str=[NSString stringWithFormat:@"%d组%d行",component+1,row+1];
    return str;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


//设置每列宽度
-(CGFloat)pickerView:(UIPickerView *)pickerView widthForComponent:(NSInteger)component
{
    if (component==0) {
        return 50;
    }
    return 80;
}


//返回选中的行
-(void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    if (component==0) {
        NSLog(@"第一列选中第%ld个",row+1);
    }
    if (component==1) {
        NSLog(@"第二列选中第%ld个",row+1);
    }
    if (component==2) {
        NSLog(@"第三列选中第%ld个",row+1);
    }
    
}




//可以将自定义的视图显示到屏幕上
//-(UIView*)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view
//{
//   UIImage* image=[UIImage imageNamed:[NSString stringWithFormat:@"%ld.jpg",row%7+1]];
//   UIImageView* iView=[[UIImageView alloc]initWithImage:image];
//    
//    return iView;
//    
//}



@end




