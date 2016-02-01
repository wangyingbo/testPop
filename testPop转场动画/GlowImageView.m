//
//  GlowimageView.m
//  testPop转场动画
//
//  Created by 王迎博 on 16/2/1.
//  Copyright © 2016年 王迎博. All rights reserved.
//

#import "GlowImageView.h"

@interface GlowImageView ()
{
    CGColorSpaceRef colorSpaceRef;
    CGColorRef glowColorRef;
    
}

@end


@implementation GlowImageView

-(void)setGlowColor:(UIColor *)newGlowColor
{
    if (newGlowColor != self.glowColor) {
        CGColorRelease(glowColorRef);
        
        _glowColor = newGlowColor;
        glowColorRef = CGColorCreate(colorSpaceRef, CGColorGetComponents(_glowColor.CGColor));
    }
    [self setNeedsDisplay];
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        colorSpaceRef = CGColorSpaceCreateDeviceRGB();
        self.glowOffset = CGSizeMake(0, 0);
        self.glowAmount = 30;
        self.glowColor = [UIColor greenColor];
    }
    return self;
}

-(void)dealloc
{
    CGColorRelease(glowColorRef);
    CGColorSpaceRelease(colorSpaceRef);
    
}


-(void)drawRect:(CGRect)rect
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSaveGState(context);
    
    CGContextSetShadow(context, self.glowOffset, self.glowAmount);
    CGContextSetShadowWithColor(context, self.glowOffset, self.glowAmount, glowColorRef);
    
    CGContextRestoreGState(context);
}

@end
