//
//  SortsHandler.h
//  SortSummary
//
//  Created by yuqian on 2018/9/21.
//  Copyright © 2018年 yuqian. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SortsHandler : NSObject


/**
 冒泡排序 O(n^2) 稳定
 */
+ (NSArray *) bubbleSort:(NSArray *)array;

/**
 选择排序 O(n^2) 不稳定
 */
+ (NSArray *) selectionSort:(NSArray *)array;

/**
 插入排序 O(n^2) 稳定 想象打扑克时整牌
 */
+ (NSArray *) insertionSort:(NSArray *)array;

/**
 希尔排序 O(n^1.3) 不稳定 缩小增量排序
 */
+ (NSArray *) shellSort:(NSArray *)array;

/**
 归并排序 O(nlogn) 稳定
 */
+ (NSArray *) mergeSort:(NSArray *)array;


/**
 快速排序 O(nlogn) 

 @param array <#array description#>
 @return <#return value description#>
 */
+ (NSArray *)quickSort:(NSMutableArray *)array;

@end

NS_ASSUME_NONNULL_END
