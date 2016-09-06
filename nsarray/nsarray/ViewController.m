//
//  ViewController.m
//  nsarray
//
//  Created by Linyou-IOS-1 on 16/9/6.
//  Copyright © 2016年 TGSDK. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.mmmm=[[model alloc]init];
    
    [self.mmmm addObserver:self forKeyPath:@"arr" options:NSKeyValueObservingOptionOld |NSKeyValueObservingOptionNew context:nil];
    // Do any additional setup after loading the view, typically from a nib.
    NSTimer *time=[NSTimer scheduledTimerWithTimeInterval:5 target:self selector:@selector(timeronClick) userInfo:nil repeats:YES];
    [[NSRunLoop mainRunLoop] addTimer:time forMode:NSDefaultRunLoopMode];
    
    
    
}

-(void)timeronClick{
    [[self.mmmm mutableArrayValueForKeyPath:@"arr"] addObject:@"1"];
}

-(void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context{
    if ([keyPath isEqual:@"arr"]) {
        NSLog(@"%@",self.mmmm.arr);
       // NSLog(@"%lu",(unsigned long)self.arr.count);
    }
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
