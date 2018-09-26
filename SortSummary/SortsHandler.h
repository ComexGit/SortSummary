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
 快速排序 O(nlogn) 不稳定
 在最优情况下，递归树深度log2n。（数量级也属于logn）partition每次均匀划分，如果排序n个关键字，递归树深度为.log2n. + 1(.x.表示对x向下取整)，即仅需递归log2n次。
 在最坏情况下，递归树深度n。待排序的序列为正序或者逆序（即有序），每次划分得到的序列只会减少一个记录，另一个为空序列。此时的递归树，是一棵斜树。
 */
+ (NSArray *)quickSort:(NSArray *)array;

@end

NS_ASSUME_NONNULL_END
