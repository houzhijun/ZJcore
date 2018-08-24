//
//  ZJColor.m
//  ZJColor
//
//  Created by HOUzhijun on 2018/8/24.
//  Copyright © 2018年 houge. All rights reserved.
//

#import "ZJColor.h"

#define DEFAULT_VOID_COLOR [UIColor whiteColor]

@implementation ZJColor

+ (UIColor *)colorWithHexString:(NSString *)stringToConvert
{
    NSString *cString = [[stringToConvert stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]] uppercaseString];
    
    if ([cString length] < 6)
        return DEFAULT_VOID_COLOR;
    if ([cString hasPrefix:@"#"])
        cString = [cString substringFromIndex:1];
    if ([cString length] != 6)
        return DEFAULT_VOID_COLOR;
    
    NSRange range;
    range.location = 0;
    range.length = 2;
    NSString *rString = [cString substringWithRange:range];
    
    range.location = 2;
    NSString *gString = [cString substringWithRange:range];
    
    range.location = 4;
    NSString *bString = [cString substringWithRange:range];
    
    
    unsigned int r, g, b;
    [[NSScanner scannerWithString:rString] scanHexInt:&r];
    [[NSScanner scannerWithString:gString] scanHexInt:&g];
    [[NSScanner scannerWithString:bString] scanHexInt:&b];
    
    return [UIColor colorWithRed:((float) r / 255.0f)
                           green:((float) g / 255.0f)
                            blue:((float) b / 255.0f)
                           alpha:1.0f];
}

+ (UIColor *)arc4RandomColor{
    
    return [UIColor colorWithRed:arc4random()%256/255.0f green:arc4random()%256/255.0f blue:arc4random()%256/255.0f alpha:1.0f];
    
}

+ (UIColor *)colorR:(float)r G:(float)g B:(float)b{
    return [UIColor colorWithRed: r / 255.0f
                           green:g / 255.0f
                            blue:b / 255.0f
                           alpha:1.0f];
}

@end
