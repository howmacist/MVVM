//
//  ViewModel.m
//  MVVM
//
//  Created by aofel on 14-8-20.
//  Copyright (c) 2014年 zyf. All rights reserved.
//

#import "ViewModel.h"

@implementation ViewModel
{
    UIView *_superView;
}
- (instancetype)initWithModel:(Model  *)model {
    self = [super init];
    if (!self){
        return nil;
    }
    _model  = model;
    if (model.salutation.length > 0) {
        _nameText = [NSString stringWithFormat:@"%@ %@ %@", self.model.salutation, self.model.firstName, self.model.lastName];
    } else {
        _nameText = [NSString stringWithFormat:@"%@ %@", self.model.firstName, self.model.lastName];
    }
    _birthdateText = model.birthdate;
    
    return self;
}
-(void)showBtnInView:(UIView *)bgView{
    _superView = bgView;
    UIButton *_btn = [[UIButton alloc]init];
    _btn.backgroundColor = [UIColor grayColor];
    _btn.frame = CGRectMake(110, 100, 100, 100);
    [_btn addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    [bgView addSubview:_btn];
}
-(void)btnClick:(UIButton*)btn{
    NSLog(@"点击了");
    UIAlertView *_alert = [[UIAlertView alloc]initWithTitle:@"test" message:@"点击了按钮" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"One", @"Two",nil];
    [_alert show];
}
-(void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    UIResponder *responder = _superView;
    while ((responder = [responder nextResponder])){
        if ([responder isKindOfClass: [UIViewController class]]){
            UIViewController *_vc = (UIViewController *)responder;
            if (buttonIndex==0) {
                NSLog(@"点击了取消");
            }else if (buttonIndex==1){
                NSLog(@"点击了One");
                OneViewController *_one = [[OneViewController alloc]init];
                [_vc.navigationController pushViewController:_one animated:YES];
            }else if (buttonIndex==2){
                NSLog(@"点击了Two");
                TwoViewController *_two = [[TwoViewController alloc]init];
                [_vc.navigationController pushViewController:_two animated:YES];
            }
        }
    }
    
}
@end
