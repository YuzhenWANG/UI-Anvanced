//
//  VCImageShow.m
//  照片墙实例
//
//  Created by 王宇珍 on 16/12/2.
//  Copyright (c) 2016年 王宇珍. All rights reserved.
//

#import "VCImageShow.h"

@interface VCImageShow ()

@end

@implementation VCImageShow

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor=[UIColor yellowColor];
    
    //传imgView：
    self.title=@"图片展示";
    _imgView=[[UIImageView alloc]init];
    _imgView.frame=CGRectMake(0, 0, 320, 480);
    _imgView.image=_image;
    
    _imgView.image=[UIImage imageNamed:[NSString stringWithFormat:@"%lu.jpg",_imgTag-100]];
    
    [self.view addSubview:_imgView];
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
