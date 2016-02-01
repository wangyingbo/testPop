//
//  MenuItem.m
//  testPop转场动画
//
//  Created by 王迎博 on 16/2/1.
//  Copyright © 2016年 王迎博. All rights reserved.
//

#import "MenuItem.h"

@implementation MenuItem

- (instancetype)initWithTitle:(NSString *)title
                     iconName:(NSString *)iconName
                    glowColor:(UIColor *)glowColor
                        index:(NSUInteger)index {
    self = [super init];
    if (self) {
        self.title = title;
        self.iconImage = [UIImage imageNamed:iconName];
        self.glowColor = glowColor;
        self.index = index;
    }
    return self;
}

@end
