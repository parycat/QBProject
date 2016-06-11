//
//  TYLineButton.m
//  MagicMask
//
//  Created by QuincyYan on 16/5/13.
//  Copyright © 2016年 一斌. All rights reserved.
//

#import "TYLineButton.h"

@implementation TYLineButton

- (void)drawRect:(CGRect)rect {
    [super drawRect:rect];
    
    CGRect textRect = self.titleLabel.frame;
    CGFloat descender = self.titleLabel.font.descender + 2;
    CGContextRef contextRef = UIGraphicsGetCurrentContext();
    CGContextSetStrokeColorWithColor(contextRef, self.titleLabel.textColor.CGColor);
    CGContextMoveToPoint(contextRef, textRect.origin.x, textRect.origin.y + textRect.size.height + descender);
    CGContextAddLineToPoint(contextRef, textRect.origin.x + textRect.size.width, textRect.origin.y + textRect.size.height + descender);
    CGContextClosePath(contextRef);
    CGContextDrawPath(contextRef, kCGPathStroke);
}

@end
