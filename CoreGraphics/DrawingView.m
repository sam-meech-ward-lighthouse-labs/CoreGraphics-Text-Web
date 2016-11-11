//
//  DrawingView.m
//  CoreGraphics
//
//  Created by Sam Meech-Ward on 2016-11-11.
//  Copyright © 2016 Sam Meech-Ward. All rights reserved.
//

#import "DrawingView.h"

@implementation DrawingView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    CGContextRef currentContext = UIGraphicsGetCurrentContext();
    
//    CGContextAddRect(currentContext, CGRectMake(20, 20, 100, 200));
//    
//    CGContextAddRect(currentContext, CGRectMake(200, 20, 200, 100));
//    
//    CGContextSetFillColorWithColor(currentContext, [UIColor redColor].CGColor);
//    
//    CGContextFillPath(currentContext);
//    
//    CGContextAddEllipseInRect(currentContext, CGRectMake(20, 200, 100, 100));
//    
//    CGContextSetFillColorWithColor(currentContext, [UIColor blueColor].CGColor);
//    
//    CGContextFillPath(currentContext);
    
//    CGContextMoveToPoint(currentContext, 40, 40);
//    CGContextAddLineToPoint(currentContext, self.frame.size.width/2.0, 200);
//    CGContextAddLineToPoint(currentContext, self.frame.size.width*2.0/3.0, 100);
//    CGContextClosePath(currentContext);
    
    
    UIBezierPath *path = [UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(40, 40)];
    [path addLineToPoint:CGPointMake(400, 0)];
    [path addLineToPoint:CGPointMake(400, 400)];
    [path closePath];
    
    CGContextAddPath(currentContext, path.CGPath);
    
    CGContextSetFillColorWithColor(currentContext, self.primaryColor.CGColor);

    CGContextFillPath(currentContext);
}


@end
