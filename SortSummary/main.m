//
//  main.m
//  SortSummary
//
//  Created by yuqian on 2018/9/21.
//  Copyright © 2018年 yuqian. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SortsHandler.h"


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSArray *array = @[@5, @2, @7, @1, @6, @3, @9, @4, @8];
        
        NSLog(@"冒泡排序：%@", [SortsHandler bubbleSort:array]);
        NSLog(@"选择排序：%@", [SortsHandler selectionSort:array]);
        NSLog(@"插入排序：%@", [SortsHandler insertionSort:array]);
        NSLog(@"希尔排序：%@", [SortsHandler shellSort:array]);
//        NSLog(@"冒泡排序：%@", [SortsHandler bubbleSort:array]);
//        NSLog(@"冒泡排序：%@", [SortsHandler bubbleSort:array]);
//        NSLog(@"冒泡排序：%@", [SortsHandler bubbleSort:array]);
    }
    return 0;
}
