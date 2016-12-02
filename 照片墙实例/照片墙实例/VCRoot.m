//
//  VCRoot.m
//  照片墙实例
//
//  Created by 王宇珍 on 16/12/2.
//  Copyright (c) 2016年 王宇珍. All rights reserved.
//

#import "VCRoot.h"
#import "VCImageShow.h"

@interface VCRoot ()

@end

@implementation VCRoot

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    
    self.title=@"照片墙";
    self.navigationController.navigationBar.translucent=NO;
    self.navigationController.navigationBar.barTintColor=[UIColor yellowColor];
    
    
    
    //滚动视图
    UIScrollView* sv=[[UIScrollView alloc]init];
    sv.frame=CGRectMake(5, 10, 300, 400);
    //画布大小
    sv.contentSize=CGSizeMake(300, 480*1.5);
    //隐藏右侧滚动条
    sv.showsVerticalScrollIndicator=NO;
    
    
    //打开交互事件
    sv.userInteractionEnabled=YES;
    self.view.backgroundColor=[UIColor whiteColor];
    
    for (int i=0; i<15; i++) {
        NSString* strName=[NSString stringWithFormat:@"%d.jpg",i+1];
        UIImage* image=[UIImage imageNamed:strName];
        UIImageView* iView=[[UIImageView alloc]initWithImage:image];
        iView.frame=CGRectMake(3+(i%3)*100, 10+(i/3)*150, 90, 130);
        [sv addSubview:iView];
        
        
        //加手势
        iView.userInteractionEnabled=YES;
        UITapGestureRecognizer* tap=[[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(pressTap:)];
        
        //单次单击
        tap.numberOfTapsRequired=1;
        //单个手指
        tap.numberOfTouchesRequired=1;
        [iView addGestureRecognizer:tap];
        
        //图像对象的tag值
        iView.tag=101+i;
    }
    [self.view addSubview:sv];
    
}
/*方法二
-(void)pressTap:(UITapGestureRecognizer*) tap
{
    UIImageView* imageView=(UIImageView*)tap.view;
    //创建显示视图控制器
    VCImageShow* imageShow=[[VCImageShow alloc]init];
    //将点击的图像赋值
    imageShow.image=imageView.image;
    //将显示视图控制器推出
    [self.navigationController pushViewController:imageShow animated:YES];
}*/

-(void)pressTap:(UITapGestureRecognizer*) tap
{
    UIImageView* imageView=(UIImageView*)tap.view;
    //创建显示视图控制器
    VCImageShow* imageShow=[[VCImageShow alloc]init];
    imageShow.imgTag=imageView.tag;
    [self.navigationController pushViewController:imageShow animated:YES];
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
