//
//  SortsHandler.m
//  SortSummary
//
//  Created by yuqian on 2018/9/21.
//  Copyright © 2018年 yuqian. All rights reserved.
//

#import "SortsHandler.h"

@implementation SortsHandler

+ (NSArray *) bubbleSort:(NSArray *)array {
    
    NSMutableArray *rawArray = [array mutableCopy];
    
    for (int i = 0; i < array.count - 1; ++i)
        for (int j = 0; j < array.count - 1 - i; ++j)
            if (rawArray[j] > rawArray[j+1])
                [rawArray exchangeObjectAtIndex:j withObjectAtIndex:j+1];
    return rawArray;
}

+ (NSArray *) selectionSort:(NSArray *)array {
    
    NSMutableArray *rawArray = [array mutableCopy];
    int minIndex;
    
    for (int i = 0; i < array.count - 1; ++i) {
        minIndex = i;
        for (int j = i + 1; j < array.count; j++) {
            if (rawArray[j] < rawArray[minIndex]) {     // 寻找最小的数
                minIndex = j;                 // 将最小数的索引保存
            }
        }
        [rawArray exchangeObjectAtIndex:i withObjectAtIndex:minIndex];
    }
    return rawArray;
}

+ (NSArray *) insertionSort:(NSArray *)array {
    
    NSMutableArray *rawArray = [array mutableCopy];
    
    int preIndex, current;
    for (int i = 1; i < array.count; ++i) {
        preIndex = i - 1;
        current = [rawArray[i] intValue];
        while (preIndex >= 0 && [rawArray[preIndex]intValue] > current) {
            rawArray[preIndex + 1] = rawArray[preIndex];
            --preIndex;
        }
        rawArray[preIndex + 1] = @(current);
    }
    return rawArray;
}

+ (NSArray *) shellSort:(NSArray *)array {
    
    NSMutableArray *rawArray = [array mutableCopy];
    int temp,gap = 1;
    
    while (gap < array.count / 3) {          // 动态定义间隔序列
        gap = gap * 3 + 1;
    }
    for (; gap > 0; gap /= 3)
        for (int i = gap; i < rawArray.count; i++) {
            
            temp = [rawArray[i] intValue];
            int j = i-gap;
            for (; j >= 0 && [rawArray[j]intValue] > temp; j-=gap) {
                rawArray[j + gap] = rawArray[j];
            }
            rawArray[j + gap] = @(temp);
        }
    return rawArray;
}

+ (NSArray *) mergeSort:(NSArray *)array {
    
    NSMutableArray *rawArray = [array mutableCopy];
    
    NSInteger len = rawArray.count;
    if (len < 2) {
        return rawArray;
    }
    int middle = floor(len / 2);
    
    NSRange range1 = NSMakeRange(0, middle); //分割范围
    NSArray *leftArray= [rawArray subarrayWithRange:range1];
    NSRange range2 = NSMakeRange(middle, len-middle);
    NSArray *rightArray= [rawArray subarrayWithRange:range2];

    return [self merge:[self mergeSort:leftArray] rightArray:[self mergeSort:rightArray]];
}

+ (NSArray *) merge:(NSArray *)leftArray rightArray:(NSArray*)rigthArray {
    
    int l = 0;
    int r = 0;
    NSMutableArray *resultArray = [NSMutableArray array];
    
    while (l < leftArray.count && r < rigthArray.count) {
        if (leftArray[l] < rigthArray[r]) {
            [resultArray addObject:leftArray[l++]];
        }
        else{
            [resultArray addObject:rigthArray[r++]];
        }
    }
    
    while (l < leftArray.count) {
        [resultArray addObject:leftArray[l++]];
    }
    while (r < rigthArray.count) {
        [resultArray addObject:rigthArray[r++]];
    }
    
    return resultArray;
}

@end
