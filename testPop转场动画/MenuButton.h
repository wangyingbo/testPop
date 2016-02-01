//
//  MenuButton.h
//  testPop转场动画
//
//  Created by 王迎博 on 16/2/1.
//  Copyright © 2016年 王迎博. All rights reserved.
//

#import <UIKit/UIKit.h>
@class MenuItem;

typedef void(^DidSelectedItemCompletedBlock)(MenuItem *menuItem);

@interface MenuButton : UIView

@property (nonatomic,copy)DidSelectedItemCompletedBlock didSelectedItemCompleted;

- (instancetype)initWithFrame:(CGRect)frame menuItem:(MenuItem *)menuItem;

@end
