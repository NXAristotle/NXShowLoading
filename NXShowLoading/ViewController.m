//
//  ViewController.m
//  NXShowLoading
//
//  Created by linyibin on 15/6/19.
//  Copyright (c) 2015年 NXAristotle. All rights reserved.
//

#import "ViewController.h"
#import "NXPopAlertViewLabel.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)showAlertView:(id)sender {
    [NXPopAlertViewLabel showPopAlertViewWithMessage:@"显示要提示文本内容，太长的话会自动换行哦！" withLabelViewAlpha:0.7 setInsertWidth:15 insertHeiht:15 andFrameCenterYoffset:0.3];
    
}

@end
