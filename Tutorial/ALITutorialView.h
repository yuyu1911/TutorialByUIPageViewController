//
//  ALITutorialView.h
//  mData
//
//  Created by 俞雨 on 13-7-23.
//  Copyright (c) 2013年 俞雨. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ALITutorialItemView.h"
@interface ALITutorialView : UIViewController<UIPageViewControllerDataSource>

@property (strong, nonatomic) UIPageViewController *pageController;

@end
