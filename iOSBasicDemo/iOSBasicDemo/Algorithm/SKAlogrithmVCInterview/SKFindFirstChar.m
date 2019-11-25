//
//  SKFindFirstChar.m
//  iOSBasicDemo
//
//  Created by shavekevin on 2019/11/25.
//  Copyright © 2019 小风. All rights reserved.
//

#import "SKFindFirstChar.h"

@implementation SKFindFirstChar
char  findFirstChar(char *cha) {
    char result = '\0';
    // 定义一个数组 用来存储各个字母出现的次数
    int array[256];
    // 对数组进行初始化操作
    for (int i = 0; i < 256; i ++) {
        array[i] = 0;
    }
    // 定义一个指针 指向当前字符串的头部
    char *p = cha;
    // 通过遍历对出现次数做+1操作 然后移动指针
    while (*p != '\0') {
        array[*(p++)]++;
    }
    // 将p指针重新指向字符串的头部
    p = cha;
    // 遍历每个字母出现的次数
    while (*p != '\0') {
        // 遇到第一个出现次数为1的字符，赋值并退出循环
        if (array[*p] == 1) {
            result = *p;
            break;
        }
        // 否则 移动指针 继续向后遍历。
        p++;
    }
    return result;
}

@end
