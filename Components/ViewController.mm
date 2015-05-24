//
//  ViewController.mm
//  Components
//
//  Created by Andrea Houg on 5/19/15.
//  Copyright (c) 2015 a. All rights reserved.
//

#import <ComponentKit/ComponentKit.h>
#import "ViewController.h"
#import "Book.h"
#import "BookComponent.h"
#import "BlahContext.h"

@interface ViewController () <CKComponentProvider, UICollectionViewDelegateFlowLayout>

{
    CKCollectionViewDataSource *_dataSource;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    BlahContext *context = [[BlahContext alloc] init];
    _dataSource = [[CKCollectionViewDataSource alloc] initWithCollectionView:self.collectionView
                                                 supplementaryViewDataSource:nil
                                                           componentProvider:[self class]
                                                                     context:context
                                                   cellConfigurationFunction:nil];
    // Insert the initial section
    CKArrayControllerSections sections;
    sections.insert(0);
    [_dataSource enqueueChangeset:{sections, {}} constrainedSize:{}];
    CKComponentFlexibleSizeRangeProvider* _sizeRangeProvider = [CKComponentFlexibleSizeRangeProvider providerWithFlexibility:CKComponentSizeRangeFlexibleHeight];
    CKArrayControllerInputItems items;
    for (int i = 0; i < 3; i++) {
        items.insert([NSIndexPath indexPathForRow:i inSection:0], [context bookWithIndex:i]);
    }
    [_dataSource enqueueChangeset:{{}, items}
                  constrainedSize:[_sizeRangeProvider sizeRangeForBoundingSize:self.collectionView.bounds.size]];
}

+ (CKComponent *)componentForModel:(Book *)model context:(BlahContext*)context {
    
    return [BookComponent newWithBook:model context:context];
}

- (CGSize)collectionView:(UICollectionView *)collectionView
                  layout:(UICollectionViewLayout *)collectionViewLayout
  sizeForItemAtIndexPath:(NSIndexPath *)indexPath
{
    return [_dataSource sizeForItemAtIndexPath:indexPath];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
