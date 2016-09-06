


//
//  model.m
//  nsarray
//
//  Created by Linyou-IOS-1 on 16/9/6.
//  Copyright © 2016年 TGSDK. All rights reserved.
//

#import "model.h"

@implementation model
-(NSMutableArray *)arr{
    if (!_arr) {
        _arr=[NSMutableArray array];
    }
    return _arr;
}
@end
