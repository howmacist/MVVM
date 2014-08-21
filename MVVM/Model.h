//
//  Model.h
//  MVVM
//
//  Created by aofel on 14-8-20.
//  Copyright (c) 2014年 zyf. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Model : NSObject
@property (nonatomic, copy) NSString *salutation;
@property (nonatomic, copy) NSString *firstName;
@property (nonatomic, copy) NSString *lastName;
@property (nonatomic, copy) NSString *birthdate;
@end
