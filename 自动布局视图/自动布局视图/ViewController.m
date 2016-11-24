//
//  ViewController.m
//  自动布局视图
//
//  Created by 王宇珍 on 16/11/24.
//  Copyright (c) 2016年 王宇珍. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    _superView = [[UIView alloc]init];
    _superView.frame=CGRectMake(20, 20, 180, 280);
    _superView.backgroundColor=[UIColor greenColor];
    
    _label01=[[UILabel alloc]init];
    //位置相对于父视图
    _label01.frame=CGRectMake(0, 0, 40, 40);
    _label01.text=@"01";
    _label01.backgroundColor=[UIColor redColor];
    
    _label02=[[UILabel alloc]init];
    _label02.frame=CGRectMake(180-40, 0, 40, 40);
    _label02.text=@"02";
    _label02.backgroundColor=[UIColor redColor];

    _label03=[[UILabel alloc]init];
    _label03.frame=CGRectMake(180-40, 280-40, 40, 40);
    _label03.text=@"03";
    _label03.backgroundColor=[UIColor redColor];

    _label04=[[UILabel alloc]init];
    _label04.frame=CGRectMake(0, 280-40, 40, 40);
    _label04.text=@"04";
    _label04.backgroundColor=[UIColor redColor];
    
    [_superView addSubview:_label01];
    [_superView addSubview:_label02];
    [_superView addSubview:_label03];
    [_superView addSubview:_label04];
    
    [self.view addSubview:_superView];
    
    
    _viewCenter=[[UIView alloc]init];
    _viewCenter.frame=CGRectMake(0, 0, _superView.bounds.size.width, 40);
    _viewCenter.center=CGPointMake(180/2, 280/2);
    _viewCenter.backgroundColor=[UIColor orangeColor];
    
    [_superView addSubview:_viewCenter];
    
    
    _label02.autoresizingMask=UIViewAutoresizingFlexibleLeftMargin;
    
    _label03.autoresizingMask=UIViewAutoresizingFlexibleLeftMargin| UIViewAutoresizingFlexibleTopMargin;
    
    _label04.autoresizingMask=UIViewAutoresizingFlexibleRightMargin|UIViewAutoresizingFlexibleTopMargin;
    
    _viewCenter.autoresizingMask=UIViewAutoresizingFlexibleWidth|UIViewAutoresizingFlexibleTopMargin|UIViewAutoresizingFlexibleBottomMargin;

}



-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    
    static BOOL isLarge=NO;
    
    
    [UIView beginAnimations:nil context:nil ];
    [UIView setAnimationDuration:1];
    
    if (isLarge==NO) {
        _superView.frame=CGRectMake(10, 10, 300, 400);
    }
    else
    {
        _superView.frame=CGRectMake(20, 20, 180, 280);
        
        
    }
    
    [UIView commitAnimations];
    isLarge=!isLarge;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
