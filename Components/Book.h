//
//  Book.h
//  Components
//
//  Created by Andrea Houg on 5/22/15.
//  Copyright (c) 2015 a. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Book : NSObject

@property (strong, nonatomic) NSString * title;
- (instancetype) initWithTitle:(NSString *)title;

@end
