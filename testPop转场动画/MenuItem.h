//
//  MenuItem.h
//  testPop转场动画
//
//  Created by 王迎博 on 16/2/1.
//  Copyright © 2016年 王迎博. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface MenuItem : NSObject

@property (nonatomic, copy  ) NSString   *title;
@property (nonatomic, strong) UIImage    *iconImage;
@property (nonatomic, strong) UIColor    *glowColor;
@property (nonatomic, assign) NSUInteger index;

- (instancetype)initWithTitle:(NSString *)title
                     iconName:(NSString *)iconName
                    glowColor:(UIColor *)glowColor
                        index:(NSUInteger)index;
@end
