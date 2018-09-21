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
    
    
    return rawArray;
}

@end
