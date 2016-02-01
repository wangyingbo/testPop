//
//  GlowimageView.h
//  testPop转场动画
//
//  Created by 王迎博 on 16/2/1.
//  Copyright © 2016年 王迎博. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface GlowImageView : UIButton

@property (nonatomic,assign) CGSize  glowOffset;
@property (nonatomic,assign) CGFloat glowAmount;
@property (nonatomic,assign) BOOL    isTrue;
@property (nonatomic,strong) UIColor *glowColor;
@end
