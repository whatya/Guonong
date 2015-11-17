//
//  Tool.m
//  Guonong
//
//  Created by 张宝 on 15/10/27.
//  Copyright © 2015年 张宝. All rights reserved.
//

#import "Tool.h"

#pragma mark- 添加边框圆角
void AddCorner(id target, float radius,
               float borderWith,UIColor *borderColor)
{
    [target setClipsToBounds:YES];
    CALayer *layer      = [target layer];
    layer.cornerRadius  = radius;
    layer.borderWidth   = borderWith;
    layer.borderColor   = borderColor.CGColor;
}

#pragma mark- 验证电话号码
BOOL IsValidPhone(NSString *inputString)
{
    /**
     * 手机号码
     * 移动：134[0-8],135,136,137,138,139,150,151,157,158,159,182,187,188
     * 联通：130,131,132,152,155,156,185,186
     * 电信：133,1349,153,180,189
     */
    NSString * MOBILE = @"^1(3[0-9]|5[0-35-9]|8[025-9])\\d{8}$";
    /**
     10         * 中国移动：China Mobile
     11         * 134[0-8],135,136,137,138,139,150,151,157,158,159,182,187,188
     12         */
    NSString * CM = @"^1(34[0-8]|(3[5-9]|5[017-9]|8[278])\\d)\\d{7}$";
    /**
     15         * 中国联通：China Unicom
     16         * 130,131,132,152,155,156,185,186
     17         */
    NSString * CU = @"^1(3[0-2]|5[256]|8[56])\\d{8}$";
    /**
     20         * 中国电信：China Telecom
     21         * 133,1349,153,180,189
     22         */
    NSString * CT = @"^1((33|53|8[09])[0-9]|349)\\d{7}$";
    /**
     25         * 大陆地区固话及小灵通
     26         * 区号：010,020,021,022,023,024,025,027,028,029
     27         * 号码：七位或八位
     28         */
    // NSString * PHS = @"^0(10|2[0-5789]|\\d{3})\\d{7,8}$";
    
    NSPredicate *regextestmobile = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", MOBILE];
    NSPredicate *regextestcm = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", CM];
    NSPredicate *regextestcu = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", CU];
    NSPredicate *regextestct = [NSPredicate predicateWithFormat:@"SELF MATCHES %@", CT];
    
    if (([regextestmobile evaluateWithObject:inputString] == YES)
        || ([regextestcm evaluateWithObject:inputString] == YES)
        || ([regextestct evaluateWithObject:inputString] == YES)
        || ([regextestcu evaluateWithObject:inputString] == YES))
    {
        return YES;
    }
    else
    {
        return NO;
    }
}

#pragma mark- 验证密码
BOOL IsPasswordValidAndGreatThan(int requiredLength,NSString* inputString)
{
    return inputString.length > requiredLength;
}

#pragma mark- 弹出框
void PopSuccess(NSString *inputString)
{
    [ProgressHUD showSuccess:inputString];
}

void PopError(NSString* inputString)
{
    [ProgressHUD showError:inputString];
}

void InProgress(NSString *inputString)
{
    [ProgressHUD show:inputString Interaction:YES];
}

void MissionEnd()
{
    [ProgressHUD dismiss];
}

#pragma mark- 设置导航栏标题、颜色
void TopBar(id target,NSString *title,UIColor *color)
{
    UIViewController *temp = (UIViewController*)target;
    if (title) {temp.title = title;}
    NSMutableDictionary *textAttrs = [NSMutableDictionary dictionary];
    textAttrs[NSForegroundColorAttributeName] = color;
    [temp.navigationController.navigationBar setTitleTextAttributes:textAttrs];
}

#pragma mark- rgb生成颜色
UIColor* RGB(int r,int g,int b,float alph)
{
    return [UIColor colorWithRed:r/255.0 green:g/255.0 blue:b/255.0 alpha:alph];
}

#pragma mark- 通过字符串生成url
NSURL* URL(NSString *url){
    return [NSURL URLWithString:url];
}

#pragma mark- 从nib生成view
UIView *Nib(NSString* nibName,id target){
    return [[[NSBundle mainBundle] loadNibNamed:nibName owner:target options:nil] lastObject];
}

#pragma mark- 验证数据类型
BOOL isString(id source)
{
    if ([source isKindOfClass:[NSString class]]) {
        return YES;
    }else{
        return NO;
    }
}

BOOL isDictionary(id source)
{
    if ([source isKindOfClass:[NSDictionary class]]) {
        return YES;
    }else{
        return NO;
    }
}

BOOL isArray(id source)
{
    if ([source isKindOfClass:[NSArray class]]) {
        return YES;
    }else{
        return NO;
    }
}

BOOL isNumber(id source)
{
    if ([source isKindOfClass:[NSNumber class]]) {
        return YES;
    }else{
        return NO;
    }
}

#pragma mark- 判断是否为整型
BOOL isPureInt(NSString *string)
{
    NSScanner* scan = [NSScanner scannerWithString:string];
    int val;
    return [scan scanInt:&val] && [scan isAtEnd];
}

#pragma mark- 判断是否为浮点型
BOOL isPureFloat(NSString *string)
{
    NSScanner* scan = [NSScanner scannerWithString:string];
    float val;
    return[scan scanFloat:&val] && [scan isAtEnd];
}

#pragma mark- 验证字典key对应的值
NSString* StringValue(id source,NSString* key)
{
    if (isDictionary(source)) {
        NSDictionary *temp = source;
        NSString *string = temp[key];
        if (isString(source)) {
            return string;
        }else{
            NSLog(@"%@对应但数据不是字符串",key);
            return @"";
        }
    }else{
        NSLog(@"源数据不是NSDictionary");
        return @"";
    }
}

NSArray* ArrayValue(id source,NSString *key)
{
    if (isDictionary(source)) {
        NSDictionary *temp = source;
        NSArray *array = temp[key];
        if (isArray(array)) {
            return array;
        }else{
            NSLog(@"%@对应但数据不是数组",key);
            return @[];
        }
    }else{
        NSLog(@"源数据不是NSDictionary");
        return @[];
    }
}

NSDictionary* DictionaryValue(id source,NSString *key)
{
    if (isDictionary(source)) {
        NSDictionary *temp = source;
        NSDictionary *dictionary = temp[key];
        if (isDictionary(dictionary)) {
            return  dictionary;
        }else{
            NSLog(@"%@对应但数据不是字典",key);
            return @{};

        }
    }else{
        NSLog(@"源数据不是NSDictionary");
        return @{};

    }
}

int IntNumber(id source,NSString *key)
{
    if (isDictionary(source)) {
        NSNumber *number = source[key];
        if (isNumber(number)) {
            return [number intValue];
        }else{
            NSLog(@"%@对应但数据不是数字",key);
            return 0;

        }
    }else{
        NSLog(@"源数据不是NSDictionary");
        return 0;
    }
}

double DoubleNumber(id source,NSString *key)
{
    if (isDictionary(source)) {
        NSNumber *number = source[key];
        if (isNumber(number)) {
            return [number doubleValue];
        }else{
            NSLog(@"%@对应但数据不是数字",key);
            return 0;
            
        }
    }else{
        NSLog(@"源数据不是NSDictionary");
        return 0;
    }
}

#pragma mark- 毫秒转为时间
NSDate* DateValue(id source,NSString* key)
{
    if (isDictionary(source)) {
        NSString *string = source[key];
        if (isString(string)) {
            long long time = [string longLongValue];
            return [NSDate dateWithTimeIntervalSince1970: time /1000.0];
        }else{
            NSLog(@"%@对应但数据不是字符串",key);
            return [NSDate date];
        }
        
    }else{
        NSLog(@"源数据不是NSDictionary");
        return 0;
    }

}
