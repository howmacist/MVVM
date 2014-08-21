//
//  ViewModel.h
//  MVVM
//
//  Created by aofel on 14-8-20.
//  Copyright (c) 2014年 zyf. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Model.h"
#import "OneViewController.h"
#import "TwoViewController.h"
@interface ViewModel : NSObject<UIAlertViewDelegate>
@property(nonatomic,readonly)Model*model;
@property (nonatomic, readonly) NSString *nameText;
@property (nonatomic, readonly) NSString *birthdateText;

-(void)showBtnInView:(UIView*)bgView;

- (instancetype)initWithModel:(Model *)model;

@end
