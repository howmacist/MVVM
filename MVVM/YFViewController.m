//
//  YFViewController.m
//  MVVM
//
//  Created by aofel on 14-8-20.
//  Copyright (c) 2014年 zyf. All rights reserved.
//

#import "YFViewController.h"

@interface YFViewController ()

@end

@implementation YFViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    Model *model = [[Model alloc]init];
    model.salutation = @"昵称";
    model.firstName = @"姓";
    model.lastName = @"名";
    model.birthdate =  @"生日";
    
    
    _viewModel = [[ViewModel alloc]init];
    self.viewModel= [self.viewModel initWithModel:model];
    [_viewModel showBtnInView:self.view];
    NSLog(@"---->%@---->%@",self.viewModel.birthdateText,self.viewModel.nameText);
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
