//
//  ZJColor.h
//  ZJColor
//
//  Created by HOUzhijun on 2018/8/24.
//  Copyright © 2018年 houge All rights reserved.
//

#import <Foundation/Foundation.h>

@interface ZJColor : NSObject

/*
 *  十六进制颜色值
 */
+ (UIColor *)colorWithHexString:(NSString *)stringToConvert;

/*
 *  随机颜色
 */
+ (UIColor *)arc4RandomColor;

/*
 *  RGB颜色值
 */
+ (UIColor *)colorR:(float)r G:(float)g B:(float)b;

@end
