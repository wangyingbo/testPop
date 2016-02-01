//
//  MenuVIew.h
//  testPop转场动画
//
//  Created by 王迎博 on 16/2/1.
//  Copyright © 2016年 王迎博. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MenuItem.h"

typedef void(^DidSelectedItemBlock)(MenuItem *selectedItem);

@interface MenuView : UIView

@property (nonatomic, strong, readonly) NSArray *items;

@property (nonatomic, copy) DidSelectedItemBlock didSelectedItemCompletion;

- (instancetype)initWithFrame:(CGRect)frame
                        items:(NSArray *)items;

- (void)showMenuAtView:(UIView *)containerView;
- (void)dismissMenu;

@end
