//
//  BlahContext.h
//  Components
//
//  Created by Andrea Houg on 5/22/15.
//  Copyright (c) 2015 a. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Book.h"

@interface BlahContext : NSObject

- (Book *)bookWithIndex:(int)index;

@end
