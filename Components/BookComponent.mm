//
//  BookComponent.m
//  Components
//
//  Created by Andrea Houg on 5/22/15.
//  Copyright (c) 2015 a. All rights reserved.
//

#import "BookComponent.h"
#import "Book.h"
#import "BlahContext.h"

@implementation BookComponent
+ (instancetype)newWithBook:(Book *)book context:(BlahContext *)context{
    return [super newWithComponent:
             [CKInsetComponent
              newWithInsets:{.top = 70, .bottom = 25, .left = 20, .right = 20}
              component:
              [CKStackLayoutComponent
               newWithView:{}
               size:{}
               style:{}
               children:{
                   {
                       [CKLabelComponent
                        newWithLabelAttributes:{
                            .string = book.title,
                            .font = [UIFont fontWithName:@"Baskerville" size:30]
                        }
                        viewAttributes:{
                            {@selector(setBackgroundColor:), [UIColor redColor]},
                            {@selector(setUserInteractionEnabled:), @NO},
                        }],
                       .alignSelf = CKStackLayoutAlignSelfCenter
                   },
                   {
                       [CKButtonComponent newWithTitles: {{UIControlStateApplication, @"Click me"}}
                                            titleColors:{} images:{} backgroundImages:{} titleFont:{} selected:NO enabled:YES action:@selector(shareTapped:) size:{.width = 100, .height = 60} attributes:{} accessibilityConfiguration:{}]

                   }
               }]]];

     return nil;
}

-(void)shareTapped:(CKButtonComponent *)sender{
    NSLog(@"selected book");
}

@end
