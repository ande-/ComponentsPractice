//
//  BlahContext.m
//  Components
//
//  Created by Andrea Houg on 5/22/15.
//  Copyright (c) 2015 a. All rights reserved.
//

#import "BlahContext.h"

@interface BlahContext()

@property (strong, nonatomic) NSArray* books;

@end

@implementation BlahContext

- (instancetype)init
{
    if (!_books) {
        _books = [NSArray arrayWithObjects:[[Book alloc] initWithTitle:@"Moby Dick"], [[Book alloc] initWithTitle:@"White Nights"], [[Book alloc] initWithTitle:@"Oliver Twist"], nil];
    }
    return self;
}

- (Book *)bookWithIndex:(int)index
{
    return self.books[index];
}

@end
