//
//  ViewController.m
//  swtableView
//
//  Created by jc on 2017/11/15.
//  Copyright © 2017年 shiwei. All rights reserved.
//

#import "ViewController.h"
#import "UIView+SpeedCreat.h"


@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIView *grayView;

@end

@implementation ViewController

/// 点击屏幕跳转,  pop回来, 查看打印, 都有dealloc

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    UILabel *label1 = [UILabel speedCreatLabelWith:nil];
    [self.grayView addSubview:label1];
    
    UILabel *label2 = [UILabel speedCreatLabelWith:^(SWLabel *label) {
        label.sText(@"label2")
        .sBackgroundColor([UIColor redColor])
        .sFrame(CGRectMake(10, 40, 60, 30))
        .sFont([UIFont systemFontOfSize:16])
        .sTextColor([UIColor whiteColor]);
    }];
    [self.grayView addSubview:label2];
    
    [self.grayView addSubview:(
         [SWLabel label]
         .sFrame(CGRectMake(10, 80, 60, 30))
         .sText(@"label3")
         .sBackgroundColor([UIColor orangeColor])
     )];
    
    [self.grayView addSubview:(
           [SWLabel label].config()
           .sFrame(CGRectMake(10, 120, 60, 30))
           .sText(@"label4")
     )];
    
    
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.navigationController pushViewController:[ViewController new] animated:true];
}

- (void)dealloc {
    printf("----%s----\n",__func__);
}

@end
