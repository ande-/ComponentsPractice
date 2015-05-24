//
//  Book.m
//  Components
//
//  Created by Andrea Houg on 5/22/15.
//  Copyright (c) 2015 a. All rights reserved.
//

#import "Book.h"

@implementation Book

- (instancetype) initWithTitle:(NSString *)title {
    self = [super init];
    self.title = title;
    return self;
}

@end
