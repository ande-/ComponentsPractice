//
//  BookComponent.h
//  Components
//
//  Created by Andrea Houg on 5/22/15.
//  Copyright (c) 2015 a. All rights reserved.
//

#import <ComponentKit/ComponentKit.h>
#import "Book.h"
#import "BlahContext.h"

@interface BookComponent : CKCompositeComponent
+ (instancetype)newWithBook:(Book *)book context:(BlahContext *)context;
@end
